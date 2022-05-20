#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2for i in /sys/class/hwmon/hwmon*/temp*_input; do 
# for i in /sys/class/hwmon/hwmon*/temp*_input; do 
#     if [ "$(<$(dirname $i)/name): $(cat temp${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "k10temp: Tdie" ]; then
# 	export HWMON_PATH="$i"
#     fi
# done
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar top >>/tmp/polybar1.log 2>&1 &
polybar bottom >>/tmp/polybar2.log 2>&1 &

echo "Bars launched..."
