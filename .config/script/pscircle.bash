#!/bin/bash


set -e


output=/tmp/pscircle.png
output2=/tmp/pscircle2.png
output3=/tmp/pscircle3.png
#option
font=Inconsolata
timer=1
treeradius=400,200,150
treecenter=-950:-500
#diagram color
bgcolor=212121
linkcolormin=82AAFF
linkcolormax=f07178
dotcolormin=c3e88d
dotcolormax=ff5370
toplistsfontcolor=FFCB6B
toplistspidfontcolor=C3E88D
treefontcolor=b2ccd6
#listcolor


while true;
do 	pscircle --output=$output \
		--background-color=$bgcolor \
		--toplists-font-face=$font \
		--toplists-font-color=$toplistsfontcolor \
		--toplists-pid-font-color=$toplistspidfontcolor \
		--tree-font-face=$font \
		--tree-font-color=$treefontcolor \
		--link-convexity=0.6 \
		--link-color-min=$linkcolormin \
		--link-color-max=$linkcolormax \
		--dot-color-min=$dotcolormin \
		--dot-color-max=$dotcolormax \
		--collapse-threads=1 \
		--max-children=100 \
		--tree-font-size=12 \
		--tree-radius-increment=$treeradius \
		--tree-rotate=true \
		--tree-rotation-angle=0 \
		--tree-center=$treecenter \
		--tree-sector-angle=1.57 \
		--output-width=1920 \
		--output-height=1080 \
		--dot-radius=4 \
		--dot-border-width=0 \
		--link-width=2 \
		--toplists-font-size=15 \
		--toplists-row-height=20 \
		--cpulist-center=600.0:-150.0 \
		--memlist-center=600.0:+150.0 \
		--toplists-bar-height=5 \
		--root-pid=1 ;
	if command -v feh > /dev/null; then
		feh --bg-fill $output 
		rm $output 
	fi 	
	sleep $timer
	pscircle --output=$output2 \
		--background-color=$bgcolor \
		--toplists-font-face=$font \
		--toplists-font-color=$toplistsfontcolor \
		--toplists-pid-font-color=$toplistspidfontcolor \
		--tree-font-face=$font \
		--tree-font-color=$treefontcolor \
		--link-convexity=0.6 \
		--link-color-min=$linkcolormin \
		--link-color-max=$linkcolormax \
		--dot-color-min=$dotcolormin \
		--dot-color-max=$dotcolormax \
		--collapse-threads=1 \
		--max-children=100 \
		--tree-font-size=12 \
		--tree-radius-increment=$treeradius \
		--tree-rotate=true \
		--tree-rotation-angle=0 \
		--tree-center=$treecenter \
		--tree-sector-angle=1.57 \
		--output-width=1920 \
		--output-height=1080 \
		--dot-radius=4 \
		--dot-border-width=0 \
		--link-width=2 \
		--toplists-font-size=15 \
		--toplists-row-height=20 \
		--cpulist-center=600.0:-150.0 \
		--memlist-center=600.0:+150.0 \
		--toplists-bar-height=5 \
		--root-pid=1 ;
		if command -v feh > /dev/null; then
			feh --bg-fill $output2 
			rm $output2 
		fi 	
	sleep $timer
	pscircle --output=$output3 \
		--background-color=$bgcolor \
		--toplists-font-face=$font \
		--toplists-font-color=$toplistsfontcolor \
		--toplists-pid-font-color=$toplistspidfontcolor \
		--tree-font-face=$font \
		--tree-font-color=$treefontcolor \
		--link-convexity=0.6 \
		--link-color-min=$linkcolormin \
		--link-color-max=$linkcolormax\
		--dot-color-min=$dotcolormin \
		--dot-color-max=$dotcolormax \
		--collapse-threads=1 \
		--max-children=100 \
		--tree-font-size=12 \
		--tree-radius-increment=$treeradius \
		--tree-rotate=true \
		--tree-rotation-angle=0 \
		--tree-center=$treecenter \
		--tree-sector-angle=1.57 \
		--output-width=1920 \
		--output-height=1080 \
		--dot-radius=4 \
		--dot-border-width=0 \
		--link-width=2 \
		--toplists-font-size=15 \
		--toplists-row-height=20 \
		--cpulist-center=600.0:-150.0 \
		--memlist-center=600.0:+150.0 \
		--toplists-bar-height=5 \
		--root-pid=1 ;
	if command -v feh > /dev/null; then
		feh --bg-fill $output3
		rm $output3 
	fi 	
	sleep $timer
done
