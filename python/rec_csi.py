import serial
import threading
import csv
import time

# シリアルポート設定
port_1 = '/dev/cu.usbmodem11101'  # ESP32 1のシリアルポート
port_2 = '/dev/cu.usbmodem11201'  # ESP32 2のシリアルポート
baud_rate = 115200

# CSVファイル名
file_1 = 'csi_data_esp32_11101.csv'
file_2 = 'csi_data_esp32_11201.csv'

# シリアルからのデータを読み取ってCSVに書き込む関数
def read_and_save_csi_data(serial_port, csv_file):
    ser = serial.Serial(serial_port, baud_rate, timeout=1)
    
    with open(csv_file, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['id', 'timestamp', 'csi_data'])  # ヘッダー行

        while True:
            try:
                # シリアルポートからデータを読み取る
                line = ser.readline().decode('utf-8').strip()
                if line and "CSI_DATA" in line:  # CSIデータが含まれる行のみ処理
                    # パケットID、CSIデータ部分を取り出す
                    csi_data_parts = line.split(',')
                    packet_id = csi_data_parts[1]
                    csi_data = csi_data_parts[-1]  # 最後の要素がCSIデータ
                    
                    # PCのシステム時刻をミリ秒単位で取得 (時:分:秒.ミリ秒)
                    timestamp = time.strftime('%H:%M:%S', time.localtime()) + '.%03d' % (time.time() * 1000 % 1000)

                    # CSVに書き込む
                    writer.writerow([packet_id, timestamp, csi_data])
                    print(f"{serial_port}: ID={packet_id}, Timestamp={timestamp}, CSI Data={csi_data}")
            except Exception as e:
                print(f"Error reading from {serial_port}: {e}")
                break

# 2つのESP32からのデータ収集を並行して行うスレッドを作成
thread_1 = threading.Thread(target=read_and_save_csi_data, args=(port_1, file_1))
thread_2 = threading.Thread(target=read_and_save_csi_data, args=(port_2, file_2))

# スレッドを開始
thread_1.start()
thread_2.start()

# スレッドが終了するまで待機
thread_1.join()
thread_2.join()
