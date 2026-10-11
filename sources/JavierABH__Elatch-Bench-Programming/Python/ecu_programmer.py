import subprocess
import pylink

import threading
import time
from datetime import datetime

class ECUProgrammer:
    def __init__(self, serial_number):
        self.serial_number = serial_number
        self.program_path = r'C:\Program Files\SEGGER\JLink\JLink.exe'
        self.jlink = pylink.JLink()

    def open_connect(self):
        try:
            self.jlink.open(serial_no = self.serial_number)
            return self.is_jlink_connected()
        except:
            return False

    def close_connection(self):
        try:
            self.jlink.close()
            return not self.is_jlink_connected()
        except:
            return False

    def connect_target(self, chip_name):
        try:
            time.sleep(2)
            self.jlink.connect(chip_name= chip_name, verbose= True)
            return self.is_target_connected()
        except:
            return False
    
    def flash_file(self, path_file):
        try:
            self.jlink.flash_file(path= path_file, addr= 0x0)
            return True
        except:
            return False

    def reset(self):
        try:
            self.jlink.reset()
            return True
        except:
            return False

    def restart(self):
        try:
            return self.jlink.restart()
        except:
            return False

    def halt(self):
        try:
            return self.jlink.halt()
        except:
            return False

    def get_jlink_product_name(self):
        return self.jlink.product_name
    
    def is_dll_opened(self):
        return self.jlink.opened()
    
    def is_jlink_connected(self):
        return self.jlink.connected()
    
    def is_target_connected(self):
        return self.jlink.target_connected()
    
    def cmd_connect(self):
        command = [
            self.program_path,
        ]
        subprocess.call(command)

# ecu = ECUProgrammer(601017175, 'C:\\Program Files\\SEGGER\\JLink\\JLink.exe')
# # ecu.cmd_connect()
# print(f'dll {ecu.is_dll_opened()}')
# print(ecu.open_connect())
# print(ecu.connect_target('S32K118'))
# print(f'dll {ecu.is_dll_opened()}')
# time.sleep(5)
# print(ecu.close_connection())

# Tests with threads ///////////////////////////
# path = r'C:\Elatch-Bench-Programming\Files\LSMD\s37\FlexProvisionReset.s37'
# def thread1_program():
#     ecu_thread1 = ECUProgrammer(601017175, 'C:\\Program Files\\SEGGER\\JLink\\JLink.exe')
#     print(f'1 open {ecu_thread1.open_connect()} : {datetime.now().time()}')
#     print(f"1 connect {ecu_thread1.connect_target('S32K118')} : {datetime.now().time()}")
#     print(f'1 reset {ecu_thread1.reset()} : {datetime.now().time()}')
#     print(f'1 dll {ecu_thread1.is_dll_opened()} : {datetime.now().time()}')
#     print(f'1 flash {ecu_thread1.flash_file(path)} : {datetime.now().time()}')
#     print(f'1 reset {ecu_thread1.reset()} : {datetime.now().time()}')
#     print(f'1 restart {ecu_thread1.restart()} : {datetime.now().time()}')
#     time.sleep(2)
#     print(f'1 reset {ecu_thread1.reset()} : {datetime.now().time()}')
#     print(f'1 close {ecu_thread1.close_connection()} : {datetime.now().time()}')
#     time.strftime

# def thread2_program():
#     ecu_thread2 = ECUProgrammer(601010172, 'C:\\Program Files\\SEGGER\\JLink\\JLink.exe')
#     print(f'2 open {ecu_thread2.open_connect()} : {datetime.now().time()}')
#     print(f"2 connect {ecu_thread2.connect_target('S32K118')} : {datetime.now().time()}")
#     print(f'2 reset {ecu_thread2.reset()} : {datetime.now().time()}')
#     print(f'2 dll {ecu_thread2.is_dll_opened()} : {datetime.now().time()}')
#     print(f'2 flash {ecu_thread2.flash_file(path)} : {datetime.now().time()}')
#     print(f'2 reset {ecu_thread2.reset()} : {datetime.now().time()}')
#     print(f'2 restart {ecu_thread2.restart()} : {datetime.now().time()}')
#     time.sleep(2)
#     print(f'2 reset {ecu_thread2.reset()} : {datetime.now().time()}')
#     print(f'2 close {ecu_thread2.close_connection()} : {datetime.now().time()}')

# thread1 = threading.Thread(target=thread1_program)
# thread2 = threading.Thread(target=thread2_program)

# thread1.start()
# thread2.start()

# thread1.join()
# thread2.join()
# ///////////////////////////