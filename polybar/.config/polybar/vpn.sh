#!/bin/bash

if [ $(pgrep -a openvpn | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1) ]; then
    echo ""
else
    echo "%{F#4C566A}"
fi
