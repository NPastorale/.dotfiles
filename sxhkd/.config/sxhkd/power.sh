#!/bin/sh
# rofi power menu

chosen=$(echo -e "lock\nsuspend\nreboot\npoweroff" | rofi -dmenu -i -lines 4 -theme power)
[[ $chosen == *"lock"* ]] && light-locker-command -l
[[ $chosen == *"suspend"* ]] && systemctl suspend
[[ $chosen == *"reboot"* ]] && systemctl reboot
[[ $chosen == *"poweroff"* ]] && systemctl poweroff
