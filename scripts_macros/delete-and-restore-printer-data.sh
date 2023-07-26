#!/bin/bash
if [ -d "/home/biqu/printer_data" ]; then
  echo "Deleting printer data config, database, gcodes and logs directories.."
  rm -rf /home/biqu/printer_data/config
  rm -rf /home/biqu/printer_data/database
  rm -rf /home/biqu/printer_data/gcodes
  rm -rf /home/biqu/printer_data/logs
else
  mkdir /home/biqu/printer_data
fi

echo "Restoring printer data config, database, gcodes and logs directories.."
ln -s /home/biqu/klipper_config /home/biqu/printer_data/config
ln -s /home/biqu/.moonraker_database /home/biqu/printer_data/database
ln -s /home/biqu/gcode_files /home/biqu/printer_data/gcodes
ln -s /home/biqu/klipper_logs /home/biqu/printer_data/logs
