##!/bin/sh
#
#drop temp from cpu in shell
#lxterminal is hold open with "read"
#
#get temp from both cpus
TEMP0="$(cat /sys/class/thermal/thermal_zone0/temp | cut -b 1,2)"
TEMP1="$(cat /sys/class/thermal/thermal_zone1/temp | cut -b 1,2)"
# 
echo "CPU-core #1   $TEMP0 °C"
echo "CPU-core #2   $TEMP1 °C"
#
#hold lxterminal open
read
