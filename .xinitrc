#!/bin/sh

#xsetloop
let loop=0
while true; do
    xsetroot -name " $(setxkbmap -query | awk '/layout/{print $2}') | $(date '+%d %b %a') | $(date '+%H:%M') "
    let loop=$loop+1
    sleep 1
done &

#monitors
xrandr --output HDMI-0 --primary &&
xrandr --output DP-1 --auto --above HDMI-0 &&
xrandr --output HDMI-0 --mode 2560x1440 --rate 60 &&

setxkbmap us -variant dvorak &&

gentoo-pipewire-launcher &
exec dbus-launch --sh-syntax --exit-with-session dwm
