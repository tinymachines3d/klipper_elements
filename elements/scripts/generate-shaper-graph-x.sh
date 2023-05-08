#!/bin/bash

NEWY=$(ls -Art /tmp/calibration_data_x_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/pi/klipper_config/elements/input_shaping/input_shaper_results" ]
then
    mkdir /home/pi/klipper_config/elements/input_shaping/input_shaper_results
    chown pi:pi /home/pi/klipper_config/elements/input_shaping/input_shaper_results
fi

~/klipper/scripts/calibrate_shaper.py $NEWY -o /home/pi/klipper_config/elements/input_shaping/input_shaper_results/shaper_calibrate_x_$DATE.png
