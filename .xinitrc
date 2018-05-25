#!/bin/sh
xrandr --output DVI-I-1 --primary --pos 0x0 --output DP-4 --right-of DVI-I-1 
hsetroot -solid "#222222" 
case $HOSTNAME in
		(cdrc-desk) compton -b & DISPLAY=:0.1 2bwm &
esac
exec i3
