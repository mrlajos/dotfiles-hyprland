#!/bin/bash

# Zero-width prefixes to control alphabetical order:
# \u200b < \u200c < \u200d
entries=$'\u200b  Lock\n\u200c  Reboot\n\u200d  Power Off'

selected="$(printf '%s\n' "$entries" | wofi \
  --dmenu \
  --hide-scroll \
  --hide-search \
  --width 320 \
  --height 180 \
  --style ~/.config/waybar/scripts/power-menu.css \
)"

case "$selected" in
  *Lock*)    hyprlock ;;
  *Reboot*)  reboot ;;
  *Power*)   poweroff ;;
esac

