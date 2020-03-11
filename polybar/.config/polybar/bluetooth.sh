#!/bin/sh
# Checks for bluetooth off
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
    echo "%{F#BF616A}"
# Checks if connected and headphones
elif [ $(bluetoothctl info | grep '00001108-0000-1000-8000-00805f9b34fb' | wc -c) -gt 0 ]; then
    echo "%{F#2193ff}"
# Checks for connected devices
elif [ $(bluetoothctl info | grep 'Device' | wc -c) -eq 0 ]; then
    echo ""
else
    echo "%{F#2193ff}"
fi
