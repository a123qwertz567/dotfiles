#!/bin/sh
#set display for performd action
DISPLAY=:0
#
#Make SS for screensaver
scrot /home/a123qwertz567/Bilder/screenshot.png
#
#blur SS
convert -blur 4x4 /home/a123qwertz567/Bilder/screenshot.png /home/a123qwertz567/Bilder/lockscreen.png
#
#lock screen instant
#xscreensaver-command -lock
i3lock -i /home/a123qwertz567/Bilder/lockscreen.png
