#!/bin/bash

chmod +x ~/klipper_config/elements/scripts/pis-off.sh

sed -i 's/^\(\[include elements\/input_shaping\/pis.cfg\]\)/#\1/g' ~/klipper_config/printer.cfg