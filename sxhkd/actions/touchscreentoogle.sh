#!/bin/sh
#toogle touchscreen on off
#set display for performd action
DISPLAY=:0
#get status if pen is enabled or not
STATE="$(xinput -list-props "Wacom ISDv4 90 Pen stylus" | grep "Device Enabled (138):" | cut -d ')' -f 2
)"
#
#enable or disable toucscreen
if [ "$STATE" == ":	1" ]; 
	then		
		xinput disable "Wacom ISDv4 90 Pen stylus"
		xinput disable "Wacom ISDv4 90 Pen eraser"
	else  
                xinput enable "Wacom ISDv4 90 Pen stylus"
                xinput enable "Wacom ISDv4 90 Pen eraser"
 
fi
