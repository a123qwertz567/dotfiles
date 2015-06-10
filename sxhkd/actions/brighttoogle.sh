#!/bin/bash
#select display for performd action
DISPLAY=:0
#create status var
STATE="$(xbacklight | cut -d '.' -f 1)"
#case for toogle brightness
case "$STATE" in
100) xbacklight -set 75;;
75) xbacklight -set 50;;
50) xbacklight -set 25;;
25) xbacklight -set 5;;
5) xbacklight -set 100;;
#if xbacklight is a non integer, sets it to 50
*)  xbacklight -set 100;;
esac
