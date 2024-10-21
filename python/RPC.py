import sys
import csv
import json
import argparse
from PyQt5.QtWidgets import QApplication, QWidget
from PyQt5.QtCore import QThread
import pyqtgraph as pg
import serial
from datetime import datetime

DATA_COLUMNS_NAMES = ["type", "id", "mac", "rssi", "rate", "sig_mode", "mcs", "bandwidth", "smoothing", "not_sounding",
                      "aggregation", "stbc", "fec_coding", "sgi", "noise_floor", "ampdu_cnt", "channel", 
                      "secondary_channel", "local_timestamp", "ant", "sig_len", "rx_state", "len", "first_word", "data"]

class SerialThread(QThread):
    def __init__(self, port):
        super().__init__()
        self.port = port
        self.csv_file = self.safe_filename(port) + '_data.csv'

    def safe_filename(self, name):
        return name.replace('/', '_').replace(':', '_')

    def run(self):
        ser = serial.Serial(self.port, 921600, timeout=1)
        csv_writer = csv.writer(open(self.csv_file, 'w', newline=''))
        csv_writer.writerow(DATA_COLUMNS_NAMES + ['timestamp'])

        while True:
            line = ser.readline().decode().strip()
            if 'CSI_DATA' in line:
                data_parts = line.split(',')
                timestamp = datetime.now().strftime('%M:%S.%f')[:-3]
                # Assumes data_parts already has the required fields and data is the last element as a JSON string
                csi_data = json.loads(data_parts[-1])  # Parse the JSON data field
                data_parts[-1] = csi_data  # Replace the string with actual list
                csv_writer.writerow(data_parts + [timestamp])

        ser.close()

class GraphWindow(QWidget):
    def __init__(self):
        super().__init__()
        self.resize(800, 600)
        self.plot_widget = pg.PlotWidget(self)
        self.plot_widget.setGeometry(10, 10, 780, 580)
        self.show()

    def update_plot(self, data):
        self.plot_widget.clear()
        self.plot_widget.plot(data)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    parser = argparse.ArgumentParser()
    parser.add_argument('-p', '--ports', nargs='+', help='List of serial ports')
    args = parser.parse_args()

    windows = []
    threads = []

    for port in args.ports:
        graph_window = GraphWindow()
        serial_thread = SerialThread(port)

        windows.append(graph_window)
        threads.append(serial_thread)

        serial_thread.start()

    sys.exit(app.exec_())
