#!/bin/sh
# rofi power menu

chosen=$(echo -e "􀎠\n􀊅\n􀍿\n􀆨" | rofi -dmenu -i -lines 4 -theme power)
[[ $chosen == *"Lock"* ]] && light-locker-command -l
[[ $chosen == *"Suspend"* ]] && systemctl suspend
[[ $chosen == *"Reboot"* ]] && systemctl reboot
[[ $chosen == *"Shutdown"* ]] && systemctl poweroff
