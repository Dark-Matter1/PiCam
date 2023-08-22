#! /bin/bash

#/home/pi/setupstart.sh

#/usr/bin/screen -L -Amd -S c2mjpg -i /home/pi/c2start.sh
/usr/bin/screen -Amd -S mjpg -i /home/pi/camstartup/start.sh
echo Camera 1 Started
/usr/bin/screen -Amd -S c2mjpg -i /home/pi/camstartup/c2start.sh
echo Camera 2 Started

