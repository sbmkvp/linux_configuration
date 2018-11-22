#!/bin/sh
hsetroot -tile Media/Wallpapers/Wallpaper.jpg &
xrandr --output DVI-I-1 --primary --pos 0x0 --output DP-4 --right-of DVI-I-1 & DISPLAY=:0.1 2bwm &
exec i3
