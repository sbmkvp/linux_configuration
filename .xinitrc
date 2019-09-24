#!/bin/sh
compton &
xrandr --output DisplayPort-2 --primary --mode 1920x1080 --right-of DVI-0 --output DVI-0 --mode 1280x1024 --output HDMI2 --right-of DisplayPort-2 --mode 1280x1024 &
exec i3
