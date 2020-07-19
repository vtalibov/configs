#!/bin/sh
#
# Script for taking screenshots, uses scrot and notify-send.
# Define screenshot directory in $HOME/.profile as $SCREENSHOT.
# vtalibov, 20/06/21


if ! [ -d $SCREENSHOT ]; then
	mkdir -p $SCREENSHOT
fi

FILENAME="$SCREENSHOT/%F_%T.png"

if [ $1 = '-h' -o $1 = '--help' ]; then
	echo "
See "man scrot".

Generic:

None
	Full screen.

-u
	Focused window.

-s
	Selected area."
else
	scrot $1 $FILENAME &&
	notify-send "Screenshot has been taken"
fi
