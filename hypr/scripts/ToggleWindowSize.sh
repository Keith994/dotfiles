#!/usr/bin/env bash

if hyprctl activewindow -j | jq -r '.tags' | grep "maxstatus"; then
    xpos=$(hyprctl activewindow -j | jq -r '.at[0]')
    hyprctl dispatch setfloating
    hyprctl dispatch resizeactive exact 30% 5%
    hyprctl dispatch moveactive exact "$xpos" 3
    hyprctl dispatch tagwindow -- -maxstatus
else
    hyprctl dispatch setfloating
    hyprctl dispatch resizeactive exact 99% 96%
    hyprctl dispatch centerwindow
    hyprctl dispatch moveactive 0 -15
    hyprctl dispatch tagwindow +maxstatus
fi
