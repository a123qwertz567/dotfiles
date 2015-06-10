#!/bin/bash
#mute and unmute micophone
#get state of mic
STATE="$(amixer cset numid=2,iface=MIXER,name='Capture Switch' | grep ': values=' | cut -f 2 -d '=')"

#set stae of mic
if [ "$STATE" == "on" ]; then
	amixer cset numid=2,iface=MIXER,name='Capture Switch' off
else
	amixer cset numid=2,iface=MIXER,name='Capture Switch' on
fi
