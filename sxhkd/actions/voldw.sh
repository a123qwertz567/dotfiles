#!/bin/sh
DISPLAY=:0

#script das mit amixer die lautstaerke einstellt
#max lautstaerke ermitteln
#VOLMAX="$(amixer cset numid=3,iface=MIXER,name='Master Playback Volume' | grep 'max' | cut -f 6 -d '=' | cut -f 1 -d ',')"

#5 prozent inkrement setzen
#VOLINC=3276

#die aktuelle volume holen
#VOLUME="$(amixer cset numid=3,iface=MIXER,name='Master Playback Volume' | grep ': values=' | cut -f 2 -d ',')"

#um den 5 Prozent wert senken
#addieren von werten
#VOLNEW=$(($VOLUME - $VOLINC))

#lautstaerke setzen
#amixer cset numid=3,iface=MIXER,name='Master Playback Volume' $VOLNEW

#Changed from "amixer" to "ponymix"
#Volumestats "ponymix 6" results in "xfce4-volume 1%"
# 8 points in ponymix results in 10%

ponymix -d 0 decrease 3

