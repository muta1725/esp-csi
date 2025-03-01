#!/usr/bin/env python3
# -*-coding:utf-8-*-

import sys
import csv
import json
import argparse
import pandas as pd
import numpy as np

import serial
from os import path
from io import StringIO
from datetime import datetime  # 追加

from PyQt5.Qt import *
from pyqtgraph import PlotWidget
from PyQt5 import QtCore
import pyqtgraph as pq

import threading
import time

# Reduce displayed waveforms to avoid display freezes
CSI_VAID_SUBCARRIER_INTERVAL = 3

# Remove invalid subcarriers
csi_vaid_subcarrier_index = []
csi_vaid_subcarrier_color = []
color_step = 255 // (28 // CSI_VAID_SUBCARRIER_INTERVAL + 1)

csi_vaid_subcarrier_index += [i for i in range(6, 32, CSI_VAID_SUBCARRIER_INTERVAL)]     # 26  red
csi_vaid_subcarrier_color += [(i * color_step, 0, 0) for i in range(1,  26 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]
csi_vaid_subcarrier_index += [i for i in range(33, 59, CSI_VAID_SUBCARRIER_INTERVAL)]    # 26  green
csi_vaid_subcarrier_color += [(0, i * color_step, 0) for i in range(1,  26 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]
CSI_DATA_LLFT_COLUMNS = len(csi_vaid_subcarrier_index)

csi_vaid_subcarrier_index += [i for i in range(66, 94, CSI_VAID_SUBCARRIER_INTERVAL)]    # 28  blue
csi_vaid_subcarrier_color += [(0, 0, i * color_step) for i in range(1,  28 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]
csi_vaid_subcarrier_index += [i for i in range(95, 123, CSI_VAID_SUBCARRIER_INTERVAL)]   # 28  White
csi_vaid_subcarrier_color += [(i * color_step, i * color_step, i * color_step) for i in range(1,  28 // CSI_VAID_SUBCARRIER_INTERVAL + 2)]

CSI_DATA_INDEX = 200  # buffer size
CSI_DATA_COLUMNS = len(csi_vaid_subcarrier_index)
DATA_COLUMNS_NAMES = ["type", "id", "mac", "rssi", "rate", "sig_mode", "mcs", "bandwidth", "smoothing", "not_sounding", 
                      "aggregation", "stbc", "fec_coding", "sgi", "noise_floor", "ampdu_cnt", "channel", "secondary_channel", 
                      "local_timestamp", "ant", "sig_len", "rx_state", "len", "first_word", "data", "timestamp"]  # 'timestamp'を追加

csi_data_array = np.zeros([CSI_DATA_INDEX, CSI_DATA_COLUMNS], dtype=np.complex64)

class csi_data_graphical_window(QWidget):
    def __init__(self):
        super().__init__()

        self.resize(1280, 720)
        self.plotWidget_ted = PlotWidget(self)
        self.plotWidget_ted.setGeometry(QtCore.QRect(0, 0, 1280, 720))

        self.plotWidget_ted.setYRange(-20, 100)
        self.plotWidget_ted.addLegend()

        self.csi_amplitude_array = np.abs(csi_data_array)
        self.curve_list = []

        for i in range(CSI_DATA_COLUMNS):
            curve = self.plotWidget_ted.plot(
                self.csi_amplitude_array[:, i], name=str(i), pen=csi_vaid_subcarrier_color[i])
            self.curve_list.append(curve)

        self.timer = pq.QtCore.QTimer()
        self.timer.timeout.connect(self.update_data)
        self.timer.start(100)

    def update_data(self):
        self.csi_amplitude_array = np.abs(csi_data_array)

        for i in range(CSI_DATA_COLUMNS):
            self.curve_list[i].setData(self.csi_amplitude_array[:, i])


def csi_data_read_parse(port: str, csv_writer, log_file_fd):
    ser = serial.Serial(port=port, baudrate=921600, bytesize=8, parity='N', stopbits=1)
    if ser.isOpen():
        print("open success")
    else:
        print("open failed")
        return

    while True:
        strings = str(ser.readline())
        if not strings:
            break

        strings = strings.lstrip('b\'').rstrip('\\r\\n\'')
        index = strings.find('CSI_DATA')

        if index == -1:
            log_file_fd.write(strings + '\n')
            log_file_fd.flush()
            continue

        csv_reader = csv.reader(StringIO(strings))
        csi_data = next(csv_reader)

        if len(csi_data) != len(DATA_COLUMNS_NAMES) - 1:  # 'timestamp'列を除くために-1
            print("element number is not equal")
            log_file_fd.write("element number is not equal\n")
            log_file_fd.write(strings + '\n')
            log_file_fd.flush()
            continue

        try:
            csi_raw_data = json.loads(csi_data[-1])
        except json.JSONDecodeError:
            print("data is incomplete")
            log_file_fd.write("data is incomplete\n")
            log_file_fd.write(strings + '\n')
            log_file_fd.flush()
            continue

        if len(csi_raw_data) not in [128, 256, 384]:
            print(f"element number is not equal: {len(csi_raw_data)}")
            log_file_fd.write(f"element number is not equal: {len(csi_raw_data)}\n")
            log_file_fd.write(strings + '\n')
            log_file_fd.flush()
            continue

        # タイムスタンプを取得して追加
        timestamp = datetime.now().strftime("%H:%M:%S.%f")[:-3]
        csi_data.append(timestamp)

        csv_writer.writerow(csi_data)

        # Rotate data to the left
        csi_data_array[:-1] = csi_data_array[1:]

        if len(csi_raw_data) == 128:
            csi_vaid_subcarrier_len = CSI_DATA_LLFT_COLUMNS
        else:
            csi_vaid_subcarrier_len = CSI_DATA_COLUMNS

        for i in range(csi_vaid_subcarrier_len):
            csi_data_array[-1][i] = complex(csi_raw_data[csi_vaid_subcarrier_index[i] * 2 + 1],
                                            csi_raw_data[csi_vaid_subcarrier_index[i] * 2])

    ser.close()
    return


class SubThread (QThread):
    def __init__(self, serial_port, save_file_name, log_file_name):
        super().__init__()
        self.serial_port = serial_port

        save_file_fd = open(save_file_name, 'w')
        self.log_file_fd = open(log_file_name, 'w')
        self.csv_writer = csv.writer(save_file_fd)
        self.csv_writer.writerow(DATA_COLUMNS_NAMES)

    def run(self):
        csi_data_read_parse(self.serial_port, self.csv_writer, self.log_file_fd)

    def __del__(self):
        self.wait()
        self.log_file_fd.close()


if __name__ == '__main__':
    if sys.version_info < (3, 6):
        print(" Python version should >= 3.6")
        exit()

    parser = argparse.ArgumentParser(
        description="Read CSI data from serial port and display it graphically")
    parser.add_argument('-p', '--port', dest='port', action='store', required=True,
                        help="Serial port number of csv_recv device")
    parser.add_argument('-l', '--log', dest="log_file", action="store", default="./csi_data_log.txt",
                        help="Save other serial data the bad CSI data to a log file")

    args = parser.parse_args()
    serial_port = args.port
    log_file_name = args.log_file

    # ファイル名をユーザーに入力してもらう
    file_name = input("生成するCSVファイルの名前を入力してください（例: csi_data）: ")
    if not file_name.endswith(".csv"):
        file_name += ".csv"  # .csv拡張子を自動的に追加

    app = QApplication(sys.argv)

    subthread = SubThread(serial_port, file_name, log_file_name)
    subthread.start()

    window = csi_data_graphical_window()
    window.show()

    sys.exit(app.exec())
