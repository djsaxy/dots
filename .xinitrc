#!/bin/sh

if xrandr | grep "DP-1 disconnected";
	then	
		xrandr --output eDP-1 --mode 1920x1200
	else
		xrandr --output eDP-1 --off --output DP-1 --primary --mode 1920x1080
fi		

xset s off
xset -dpms

exec dwm
