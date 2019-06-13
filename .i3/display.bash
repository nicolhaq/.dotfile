#!/bin/bash
xrandr --newmode mac 241.50  2560 2608 2640 2720  1440 1443 1448 1481 +hsync -vsync
xrandr --addmode Virtual1 mac
xrandr --output Virtual1 --mode mac
