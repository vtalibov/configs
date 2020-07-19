#!/bin/bash
#
# Regulates keyboard backlights. Don't forget to make
# /sys/class/backlight/intel_backlight/brightness
# writable. With udev, one can do it running
# the script with "-s" option as superuser first.
# Uses dunst for notifications.
#
# vtalibov, 20/07/02

BACKLIGHTDIR='/sys/class/backlight/intel_backlight'
INCREMENT=$(($(cat $BACKLIGHTDIR/max_brightness) / 10))

# Unique notification ID; have to be here to replace notifications.
MSGID=2138435787

status() {
	dunstify "Backlight: $((100 * $(cat $BACKLIGHTDIR/actual_brightness) / $(cat $BACKLIGHTDIR/max_brightness)))%" -r $MSGID
}

case $1 in
	-u | --up)
		echo $(($(cat $BACKLIGHTDIR/actual_brightness)+INCREMENT)) > $BACKLIGHTDIR/brightness
		status
		;;
	-d | --down)
		echo "$(($(cat $BACKLIGHTDIR/actual_brightness) - INCREMENT))" > $BACKLIGHTDIR/brightness
		status
		;;
	-s | --setup)
		echo 'ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chgrp video /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="leds", RUN+="/bin/chgrp input /sys/class/leds/%k/brightness"
ACTION=="add", SUBSYSTEM=="leds", RUN+="/bin/chmod g+w /sys/class/leds/%k/brightness"' > \
	/etc/udev/rules.d/90-brightnessctl.rules &&
	udevadm control --reload
		echo 'udev rule created.'
		;;	
	* | -h | --help)
		echo "Options:

-s | --setup
	Adds a systemd service to make ACPI interface writable.
	Run this option as a superuser.

-u | --up
	Increase backlight.

-d | --down
	Decrease backlight."
esac
