#!/bin/bash

NEWY=$(ls -Art /tmp/calibration_data_x_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/biqu/printer_data/config/elements/input_shaping/input_shaper_results" ]
then
    mkdir /home/biqu/printer_data/config/elements/input_shaping/input_shaper_results
    chown biqu:biqu /home/biqu/printer_data/config/elements/input_shaping/input_shaper_results
fi

/home/biqu/klipper/scripts_macros/calibrate_shaper.py $NEWY -o /home/biqu/printer_data/config/elements/input_shaping/input_shaper_results/shaper_calibrate_x_$DATE.png
