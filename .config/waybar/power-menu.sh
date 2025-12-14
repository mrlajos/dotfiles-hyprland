#!/usr/bin/env bash
set -euo pipefail

# Invisible prefixes enforce stable order even if wofi sorts
entries=$'\u200b  Lock\n\u200c  Reboot\n\u200d  Power Off'

selected="$(
  printf '%s\n' "$entries" | wofi --dmenu \
    --prompt "Power" \
    --hide-search \
    --width 320 \
    --height 180 \
    --style "$HOME/.config/waybar/power-menu.css" \
    || true
)"

# remove zero-width chars
selected="${selected//$'\u200b'/}"
selected="${selected//$'\u200c'/}"
selected="${selected//$'\u200d'/}"

[[ -z "${selected:-}" ]] && exit 0

case "$selected" in
  *Lock*)    hyprlock ;;
  *Reboot*)  reboot ;;
  *Power*)   poweroff ;;
esac


