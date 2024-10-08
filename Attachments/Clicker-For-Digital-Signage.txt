import schedule
import os
import time
from pynput.mouse import Button, Controller

mouse = Controller()
    
def do_nothing():
    mouse.press(Button.left)
    mouse.release(Button.left)
    
def reboot_system():
    os.popen("sudo reboot").read()

def main():
    schedule.every().day.at("10:25").do(do_nothing)
    schedule.every().day.at("15:00").do(do_nothing)
    schedule.every().day.at("23:00").do(reboot_system)

    while True:
        schedule.run_pending()
        time.sleep(1)
main()
