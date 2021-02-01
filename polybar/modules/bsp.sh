#!/bin/sh

alacritty -e gotop &
sleep 0.11
abc=`bspc query -N newest -d focused -n focused`
echo $abc
bspc node $abc -t floating
bspc node $abc -z top  0 -250
bspc node $abc -z bottom 0 250
bspc node $abc -z left -500 0
bspc node $abc -z right 500 0
