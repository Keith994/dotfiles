#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c /home/$USER/.config/polybar/config.ini &

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
	polybar main_external -c /home/$USER/.config/polybar/config.ini &
fi
