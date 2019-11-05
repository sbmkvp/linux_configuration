#!/bin/sh
compton &
xrandr --output DVI-I-1 --rotate left &&
hsetroot -fill media/wallpapers/dog.jpg &&
exec i3
