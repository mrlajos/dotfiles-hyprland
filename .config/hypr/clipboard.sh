#!/usr/bin/env bash

cliphist list \
  | wofi --dmenu \
         --prompt "Search..." \
         --style  ~/.config/wofi/clipboard.css \
  | cliphist decode \
  | wl-copy
