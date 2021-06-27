#!/bin/sh

w_id=$1
w_class=$2
w_instance=$3

w_name="$(xprop -id $w_id WM_NAME)"

if [[ "$w_name" != "Steam" ]]; then
  printf "focus=off state=floating"
fi