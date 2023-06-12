#!/bin/bash

NEWY=$(ls -Art /tmp/calibration_data_y_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/biqu/printer_data/config/elements/input_shaper_results" ]
then
    mkdir /home/biqu/printer_data/config/elements/input_shaper_results
    chown biqu:biqu /home/biqu/printer_data/config/elements/input_shaper_results
fi

~/klipper/scripts/calibrate_shaper.py $NEWY -o /home/biqu/printer_data/config/elements/input_shaper_results/shaper_calibrate_y_$DATE.png
