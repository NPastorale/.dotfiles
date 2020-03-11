#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
    bluetoothctl power on && bluetoothctl connect 04:52:C7:5B:70:1D &
else
    bluetoothctl power off
fi
