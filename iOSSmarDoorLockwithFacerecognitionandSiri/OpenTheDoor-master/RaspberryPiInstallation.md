
# Automated Door Lock - How to make a raspberry pi servo controller via REST API

Requires below 7 steps:
1. Install OS into SD card
2. Startup Raspberry Pi with SD card
3. Enable SSH to raspberry pi
4. Connect to wifi network
5. Install python libraries for REST API
6. Write program in python
7. Connect terminals for motor
8. Run the program


## Install OS into SD card
1. Navigate to Raspbian website and download the OS in zip format (
RASPBIAN STRETCH WITH DESKTOP)
link - https://www.raspberrypi.org/downloads/raspbian/
2. Unzip the zip file - 2017-09-07-raspbian-stretch.zip
3. Follow the commands in the below link to load the OS onto memory card ( be very careful this should take 15 mins approx) . Follow the Command Line Instructions to install the OS.
https://www.raspberrypi.org/documentation/installation/installing-images/mac.md


## Startup Raspberry Pi with SD card
1. Put SD card in Raspberry Pi 
2. Connect the HDMI cable
3. Connect the mouse/keyboard dongle
4. Connect the Power cord
5. Wait till raspberry pi boots up


## Enable SSH to raspberry pi
1. Click on terminal on the top left panel
2. Run `sudo raspi-config`
3. Goto 5 Interfacing Options
4. SSH - enter
5. Select enable Yes
6. Exit the menu by navigating to Finish


## Connect to wifi network 
1. Navigate to top right Wifi Icon
2. Select the required wifi network enter password


## Install python libraries for REST API ( via terminal)
1. Login to SSH via mac `ssh pi@<ip-address>`
   password - raspberry 
2. `sudo apt-get update`
3. `sudo apt-get install vim`
4. `sudo apt-get install python-pip`
5. `sudo pip install flask`
6. `pip install flask-restful`
7. `sudo apt-get install python-dev python-rpi.gpio`


## Write program in python
1. create a file door.py, paste below code
vim door.py
ESC : set paste
press a or i
copy the below and paste
ESC :wq
```
# RPi is used to controll the GPIO pins on raspberry pi
import RPi
import RPi.GPIO as GPIO
# Time is used for sleep
import time
# Flask is a REST Api framework in python
from flask import Flask
from flask_restful import Resource, Api

# initialize Flask
app = Flask(__name__)
api = Api(app)

# Class to lock the door using get
class Unlock(Resource):
    def get(self):
        # Set the raspberry pi to used the GPIO pins
        GPIO.setmode(GPIO.BOARD)
        # Setting pin 7 as the output pin - yellow wire
        GPIO.setup(7,GPIO.OUT)
        # Use channel 7 send signal with 50Hz
        p = GPIO.PWM(7, 50)
        # Corresponds to start position on the servo motor 0 degrees
        p.start(10.5)
        p.ChangeDutyCycle(10.5)
        # Sleep is needed for the command to work
        time.sleep(1)
        p.stop()
        GPIO.cleanup()
        return {'status': 'unlocked'}

class Lock(Resource):
     def get(self):
        # Set the raspberry pi to used the GPIO pins
        GPIO.setmode(GPIO.BOARD)
        # Setting pin 7 as the output pin - yellow wire
        GPIO.setup(7,GPIO.OUT)
        # Use channel 7 send signal with 50Hz
        p = GPIO.PWM(7, 50)
        # Corresponds to start position on the servo motor 30 degrees
        p.start(7.5)
        p.ChangeDutyCycle(7.5)
        # Sleep is needed for the command to work
        time.sleep(1)
        p.stop()
        GPIO.cleanup()
        return {'status': 'locked'}

api.add_resource(Lock, '/lock')
api.add_resource(Unlock, '/unlock')

if __name__ == '__main__':
    app.run(debug=True,host= '0.0.0.0')
```
2. chmod +x door.py

## Connect terminals for motor
1. Connect the terminals of the rapsberry pi to servo
   Not able to write this so like below picture
   ![Image of RPi](IMG_2405.JPG)

## Run the program
1. `python door.py`
to unlock - http://<ip address>:5000/unlock
to lock - http://<ip address>:5000/lock

