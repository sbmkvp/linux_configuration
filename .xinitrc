#!/bin/sh
hsetroot -tile Media/Wallpapers/Wallpaper.jpg &
xrandr --output HDMI1 --primary --mode 1920x1080 --right-of DisplayPort-3 --output DisplayPort-3 --rotate left --output DVI-0 --right-of HDMI1 --mode 1280x1024 &
exec i3
