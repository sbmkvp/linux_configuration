#!/bin/sh
count=`cat /sys/class/backlight/intel_backlight/brightness`
((count=count+500))
echo $count > "/sys/class/backlight/intel_backlight/brightness"
