#!/bin/sh

SCREENSHOT_DIR=~/Pictures/screenshots
FILENAME=$(escrotum -s '%Y-%m-%d_%H_%M_%S_$wx$h_screenshot.png' | head)
mv $FILENAME ~/Pictures/screenshots/$FILENAME
imgur $SCREENSHOT_DIR/$FILENAME
notify-send "Image URL copied to clipboard"
