#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}
xset r rate 300 50
setxkbmap se
#xrandr --newmode "2560x1080_60.00"  230.00  2560 2720 2992 3424  1080 1083 1093 1120 -hsync +vsync
#xrandr --addmode Virtual-1 2560x1080_60.00
#xrandr --output Virtual-1 --mode 2560x1080_60.00
nitrogen --restore &
picom --experimental-backends &
