#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar Main &

#polybar dropdown &
#ln -s /tmp/polybar_mqueue.$! /tmp/ipc-dropdown

#polybar-msg cmd hide

echo "Polybar launching"
