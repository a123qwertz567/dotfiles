
#!/bin/bash
#mute and unmute speakers via software
#get volume
VOLUME="$(amixer cset numid=3,iface=MIXER,name='Master Playback Volume' | grep ': values=' | cut -f 2 -d ',')"

#set stae of mic
if [ "$VOLUME" == "0" ]; then
       	#set volume to half of max volume to enable ist again       
        amixer cset numid=3,iface=MIXER,name='Master Playback Volume' 32500
else
        amixer cset numid=3,iface=MIXER,name='Master Playback Volume' off
fi


