import sys
import csv
import json
import argparse
import pandas as pd
import numpy as np

import serial
from os import path
from io import StringIO

from PyQt5.QtWidgets import QApplication, QWidget
from pyqtgraph import PlotWidget
from PyQt5 import QtCore
import pyqtgraph as pg

import threading
import time

# Reduce displayed waveforms to avoid display freezes
CSI_VAID_SUBCARRIER_INTERVAL = 3

# Define valid subcarrier indices and colors
csi_vaid_subcarrier_index = []
csi_vaid_subcarrier_color = []
color_step = 255 // (28 // CSI_VAID_SUBCARRIER_INTERVAL + 1)

# LLTF: 52 subcarriers
csi_vaid_subcarrier_index += [i for i in range(6, 32, CSI_VAID_SUBCARRIER_INTERVAL)]     # red
csi_vaid_subcarrier_color += [(i * color_step, 0, 0) for i in range(1,  26 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]
csi_vaid_subcarrier_index += [i for i in range(33, 59, CSI_VAID_SUBCARRIER_INTERVAL)]    # green
csi_vaid_subcarrier_color += [(0, i * color_step, 0) for i in range(1,  26 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]

# HT-LTF: 112 subcarriers
csi_vaid_subcarrier_index += [i for i in range(66, 94, CSI_VAID_SUBCARRIER_INTERVAL)]    # blue
csi_vaid_subcarrier_color += [(0, 0, i * color_step) for i in range(1,  28 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]
csi_vaid_subcarrier_index += [i for i in range(95, 123, CSI_VAID_SUBCARRIER_INTERVAL)]   # white
csi_vaid_subcarrier_color += [(i * color_step, i * color_step, i * color_step) for i in range(1,  28 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]

CSI_DATA_INDEX = 200  # buffer size
CSI_DATA_COLUMNS = len(csi_vaid_subcarrier_index)
DATA_COLUMNS_NAMES = ["type", "id", "mac", "rssi", "rate", "sig_mode", "mcs", "bandwidth", "smoothing", "not_sounding", "aggregation", "stbc", "fec_coding",
                      "sgi", "noise_floor", "ampdu_cnt", "channel", "secondary_channel", "local_timestamp", "ant", "sig_len", "rx_state", "len", "first_word", "data"]

csi_data_array = np.zeros([CSI_DATA_INDEX, CSI_DATA_COLUMNS], dtype=np.complex64)

class csi_data_graphical_window(QWidget):
    def __init__(self, port_index):
        super().__init__()
        self.resize(1280, 720)
        self.setWindowTitle(f"CSI Data Visualization - Port {port_index}")
        self.plotWidget = PlotWidget(self)
        self.plotWidget.setGeometry(QtCore.QRect(0, 0, 1280, 720))
        self.plotWidget.setYRange(-20, 100)
        self.plotWidget.addLegend()
        self.csi_amplitude_array = np.abs(csi_data_array)
        self.curve_list = []

        for i in range(CSI_DATA_COLUMNS):
            curve = self.plotWidget.plot(self.csi_amplitude_array[:, i], name=str(i), pen=pg.mkPen(csi_vaid_subcarrier_color[i], width=3))
            self.curve_list.append(curve)

        self.timer = QtCore.QTimer()
        self.timer.timeout.connect(self.update_data)
        self.timer.start(100)

    def update_data(self):
        self.csi_amplitude_array = np.abs(csi_data_array)

        for i in range(CSI_DATA_COLUMNS):
            self.curve_list[i].setData(self.csi_amplitude_array[:, i])

class SubThread(threading.Thread):
    def __init__(self, serial_port, base_directory='./'):
        super().__init__()
        self.serial_port = serial_port
        
        # Replace slashes to create a valid filename
        sanitized_port_name = serial_port.replace('/', '_').replace(':', '_')
        save_file_name = f'{base_directory}csi_data_{sanitized_port_name}.csv'
        log_file_name = f'{base_directory}csi_log_{sanitized_port_name}.txt'

        self.save_file_fd = open(save_file_name, 'w', newline='')
        self.log_file_fd = open(log_file_name, 'w')
        self.csv_writer = csv.writer(self.save_file_fd)
        self.csv_writer.writerow(DATA_COLUMNS_NAMES)


    def run(self):
        self.csi_data_read_parse()

    def csi_data_read_parse(self):
        ser = serial.Serial(port=self.serial_port, baudrate=921600, bytesize=8, parity='N', stopbits=1)
        if ser.isOpen():
            print(f"Serial port {self.serial_port} open successfully.")
        else:
            print(f"Failed to open serial port {self.serial_port}.")
            return

        while True:
            line = ser.readline()
            if not line:
                break

            decoded_line = line.decode('utf-8').strip()
            if 'CSI_DATA' not in decoded_line:
                self.log_file_fd.write(decoded_line + '\n')
                self.log_file_fd.flush()
                continue

            csv_reader = csv.reader(StringIO(decoded_line))
            csi_data = next(csv_reader)

            if len(csi_data) != len(DATA_COLUMNS_NAMES):
                print("Mismatch in data length.")
                self.log_file_fd.write("Mismatch in data length.\n")
                self.log_file_fd.flush()
                continue

            try:
                csi_raw_data = json.loads(csi_data[-1])
            except json.JSONDecodeError:
                print("Incomplete data received.")
                self.log_file_fd.write("Incomplete data received.\n")
                self.log_file_fd.flush()
                continue

            self.csv_writer.writerow(csi_data)

            # Update the global CSI data array
            csi_data_array[:-1] = csi_data_array[1:]
            csi_vaid_subcarrier_len = CSI_DATA_COLUMNS

            for i in range(csi_vaid_subcarrier_len):
                csi_data_array[-1][i] = complex(csi_raw_data[csi_vaid_subcarrier_index[i] * 2 + 1],
                                                csi_raw_data[csi_vaid_subcarrier_index[i] * 2])

        ser.close()
        self.save_file_fd.close()
        self.log_file_fd.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Read and display CSI data from multiple serial ports.")
    parser.add_argument('-p', '--ports', nargs='+', help="List of serial ports", required=True)
    args = parser.parse_args()

    app = QApplication(sys.argv)
    threads = []
    windows = []

    for index, port in enumerate(args.ports):
        # Updated to use the new constructor signature
        thread = SubThread(port)
        thread.start()
        threads.append(thread)

        window = csi_data_graphical_window(index)
        window.show()
        windows.append(window)

    sys.exit(app.exec_())

