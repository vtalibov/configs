#!/bin/bash
#
# Volume control with amixer; uses dunst for notifications.
# vtalibov, 20/06/22

volume() {
	awk '/%/ {gsub(/[\[\]]/,""); print $4}' <(amixer sget Master)
}

toggle() {
	awk '/%/ {gsub(/[\[\]]/,""); print $6}' <(amixer sget Master)
}

# Any unique ID to overwrite notifications
MSGID=1923879

status() {
	dunstify "Volume: $(volume)" -r $MSGID
}


case $1 in
	-u|--up)
		amixer sset Master 5%+
		status
		;;
	-d|--down)
		amixer sset Master 5%-
		status
		;;
	-m|--mute)
		if [ $(toggle) = 'on' ]; then
			amixer sset Master mute
		else
			amixer sset Master unmute
		fi
		dunstify "Volume: $(toggle)" -r $MSGID
		;;
	*|-h|--help)
		echo 'Options:

-u | --up
	Increase by 5%.

-d | --down
	Decrease by 5%.

-m | --mute
	Toggle sound on/off.'
esac

