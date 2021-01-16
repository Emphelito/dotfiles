#!/bin/sh

delim="\"

status(){ \

	echo "$delim"

	sed "s/down//;s/up/U" /sys/class/net/e*/operstate

	echo "$delim"
}

while :; do 

	xsetroot -name "$(status | tr '\n' ' ')"

	sleep 2m
done
