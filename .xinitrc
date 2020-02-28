#!/bin/bash

xset fp+ /usr/share/fonts/terminus/
xrdb -merge $HOME/.Xresources
xrdb -merge $HOME/.themes/nord
xset s on
xset s 600
xhost +local: &
/usr/bin/gpg-agent --daemon
while true; do
	xsetroot -name " $(date +%R | tr '\n' ' ')"
	sleep 1m
done &
xwallpaper --zoom $HOME/Pictures/Wallpapers/hm4k.jpg
#/usr/bin/xcompmgr &
TERMINAL=st BROWSER=firefox-bin /usr/bin/sxhkd &
if [ $(date +%H) -gt 20 ]; then
	/usr/local/bin/sct 4500 0.5;
fi
exec /usr/bin/dwm
