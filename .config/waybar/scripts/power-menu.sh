#!/bin/bash

entries="  Power Off
  Reboot
  Lock"

selected="$(printf '%s\n' "$entries" | wofi \
  --dmenu \
  --hide-scroll \
  --hide-search \
  --width 320 \
  --height 180 \
  --config ~/.config/waybar/scripts/power-menu.conf \
  --style ~/.config/waybar/scripts/power-menu.css \
  | awk '{print $NF}')"

case $selected in
  "Off") poweroff ;;
  "Reboot") reboot ;;
  "Lock") hyprlock ;;
esac