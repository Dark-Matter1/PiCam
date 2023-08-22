#! /bin/bash

# This script is for finding the right device for the cameras

file=./camDev.txt

cam1=$(v4l2-ctl --list-devices | grep -A1 -e "HD WebCam 2MP" | tail -1 | awk -F ' ' '{print $NF}' )
cam2=$(v4l2-ctl --list-devices | grep -A1 -e "WEB CAM: WEB CAM" | tail -1 | awk -F ' ' '{print $NF}' )
echo "$cam1,$cam2" > $file
