#!/bin/sh

feh --bg-scale /home/user/Stash/wall.png
xhost +local:
pulseaudio &
xinput set-prop "ELAN0712:00 04F3:30FD Touchpad" "libinput Disable While Typing Enabled" 0
setxkbmap us -option "compose:caps"
exec cwm
