#!/bin/sh
#toogle trackball on off
#set display for performd action
DISPLAY=:0
#get status if pen is enabled or not
STATE="$(xinput -list-props "TPPS/2 IBM TrackPoint" | grep "Device Enabled (138):" | cut -d ')' -f 2
)"
#
#enable or disable trackball
if [ "$STATE" == ":	1" ]; 
	then		
		xinput disable "TPPS/2 IBM TrackPoint"
	else   
		xinput enable "TPPS/2 IBM TrackPoint"
fi
