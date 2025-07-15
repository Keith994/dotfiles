#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# source https://wiki.archlinux.org/title/Hyprland#Using_a_script_to_change_wallpaper_every_X_minutes

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script uses bash (not POSIX shell) for the RANDOM variable

wallust_refresh=$HOME/.config/hypr/scripts/RefreshNoWaybar.sh

# focused_monitor=$(hyprctl monitors | awk '/^Monitor/{name=$2} /focused: yes/{print name}')

if [[ $# -lt 1 ]] || [[ ! -d $1 ]]; then
	echo "Usage:
	$0 <dir containing images>"
	exit 1
fi

# Edit below to control the images transition
export SWWW_TRANSITION_FPS=60
export SWWW_TRANSITION_TYPE=simple

# This controls (in seconds) when to switch to the next image
INTERVAL=3600

UserScripts=$HOME/.config/hypr/UserScripts

# Define file_exists function
file_exists() {
    if [ -e "$1" ]; then
        return 0 # File exists
    else
        return 1 # File does not exist
    fi
}

while true; do
	find "$1" |
		while read -r img; do
			echo "$((RANDOM % 1000)):$img"
		done |
		sort -n | cut -d':' -f2- |
		while read -r img; do
			all_monitors=($(hyprctl monitors | awk '/^Monitor/{print $2}'))
			for monitor in "${all_monitors[@]}"; do
				swww img -o "$monitor" "$img"
			done
			# swww img -o $focused_monitor "$img"
			$wallust_refresh
			# sleep 1
			# if file_exists "${UserScripts}/RainbowBorders.sh"; then
			# 	${UserScripts}/RainbowBorders.sh &
			# fi
			sleep $INTERVAL

		done
done
