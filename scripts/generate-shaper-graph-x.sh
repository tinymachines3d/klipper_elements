#!/bin/bash

NEWX=$(ls -Art /tmp/resonances_x_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/pi/klipper_config/elements/troodon/input_shaper_results" ]
then
    mkdir /home/pi/klipper_config/elements/troodon/input_shaper_results
    chown pi:pi /home/pi/klipper_config/elements/troodon/input_shaper_results
fi

~/klipper/scripts/calibrate_shaper.py $NEWX -o /home/pi/klipper_config/elements/troodon/input_shaper_results/resonances_x_$DATE.png
