#!/bin/sh

alacritty -e gotop &
sleep 0.2
abc=`bspc query -N newest -d focused -n focused`
echo $abc
bspc node $abc -t floating
bspc node $abc -z top  0 -200
bspc node $abc -z bottom 0 200
bspc node $abc -z left -450 0
bspc node $abc -z right 450 0
