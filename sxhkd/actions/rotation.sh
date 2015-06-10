#!/bin/sh
#skirpt das den bildschirm und die stift eingabe um 180grad dreht
#display exportieren fuer root zugriff aufs display
DISPLAY=:0
#auslesen in welchem status die rotation ist

ROTATION="$(xrandr -q --verbose | grep 'LVDS1' | cut -d ' ' -f 5)"
"echo $ROTATION"

#cut unterteilt hier in felder mit -d und greift dann das 5 feld in welchem der status steht
#bildschirm drehen
#switch der jenach status entscheidet
case "$ROTATION" in
normal)
	#Display drehen
	xrandr -o right
	#Stifteingabe drehen
	xsetwacom set "Wacom ISDv4 90 Pen eraser" rotate cw
	xsetwacom set "Wacom ISDv4 90 Pen stylus" rotate cw
	#Trackbal aus machen
	xinput disable "TPPS/2 IBM TrackPoint"
	;;
right)
	xrandr -o inverted
	#radierer und stift drehen
	#"xsetwacom --list devices" gibt die touc dev zurueck
	xsetwacom set "Wacom ISDv4 90 Pen eraser" rotate half
	xsetwacom set "Wacom ISDv4 90 Pen stylus" rotate half
	xinput disable "TPPS/2 IBM TrackPoint"
	;;
inverted)
	xrandr -o left
	xsetwacom set "Wacom ISDv4 90 Pen eraser" rotate ccw
	xsetwacom set "Wacom ISDv4 90 Pen stylus" rotate ccw
	xinput disable "TPPS/2 IBM TrackPoint"	
	;;
left)
	xrandr -o normal
	xsetwacom set "Wacom ISDv4 90 Pen eraser" rotate none
	xsetwacom set "Wacom ISDv4 90 Pen stylus" rotate none
	xinput enable "TPPS/2 IBM TrackPoint"	
	;;
esac


