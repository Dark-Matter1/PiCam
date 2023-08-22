#!/bin/sh

file=~/camstartup/camDev.txt
dev=$(v4l2-ctl --list-devices | grep -A1 -e "WEB CAM: WEB CAM" | tail -1 | awk -F ' ' '{print $NF}' )

#dev=/dev/video1

fswebcam -r 1920x1080 -d $dev --no-banner /home/pi/Pictures/c2tmp.jpg

fswebcam -r 1920x1080 -d $dev --no-banner /home/pi/Pictures/c2tmp2.jpg

cd "/home/pi/mjpg-streamer-master/mjpg-streamer-experimental/"

./mjpg_streamer -i "./input_uvc.so -d $dev -r 1280x720 -f 60" -o "./output_http.so -w ./www -n -c admin:beans -p 8081"
#/home/pi/mjpg-streamer-master/mjpg-streamer-experimental/start.sh
