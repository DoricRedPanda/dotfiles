#!/bin/sh

xset fp+ /usr/share/fonts/terminus/
xrdb -merge $HOME/.config/X11/Xresources
xrdb -merge $HOME/.config/X11/nord
xset s on
xset s 600
xhost +local: &
#/usr/bin/gpg-agent --daemon
while true; do
	STATUSLINE=" $(date +%R | tr '\n' ' ')"
	[ "$(cat /sys/class/power_supply/BAT0/status)" != "Discharging" ] ||
		{ BATTERY=$(cat /sys/class/power_supply/BAT0/capacity) &&
		STATUSLINE=" $BATTERY% |$STATUSLINE" &&
		[ $BATTERY -lt 25 ] &&
		notify-send -u critical "Battery critically low."
	}

	xsetroot -name "$STATUSLINE"
	sleep 30
done &
#/usr/bin/xcompmgr &
/usr/bin/sxhkd &
[ $(date +%H) -gt 20 ] && /usr/local/bin/sct 3500 0.7 &
xwallpaper --zoom $HOME/Pictures/Wallpapers/hm4k.jpg &
exec /usr/bin/dwm
