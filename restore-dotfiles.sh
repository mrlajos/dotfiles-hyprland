#!/usr/bin/env bash
set -euo pipefail

REPO="$HOME/dotfiles"

ITEMS=(
  ".bashrc"
  "collect-dotfiles.sh"
  "restore-dotfiles.sh"
  ".config/dunst"
  ".config/fontconfig"
  ".config/gtk-3.0"
  ".config/gtk-4.0"
  ".config/hypr"
  ".config/kitty"
  ".config/Kvantum"
  ".config/nwg-look"
  ".config/qt5ct"
  ".config/qt6ct"
  ".config/waybar"
  ".config/wofi"
)

for item in "${ITEMS[@]}"; do
  SRC="$REPO/$item"
  DEST="$HOME/$item"

  if [ ! -e "$SRC" ]; then
    echo "Skipping $SRC (not in repo)"
    continue
  fi

  echo "→ $SRC  ->  $DEST"

  mkdir -p "$(dirname "$DEST")"

  if [ -d "$SRC" ]; then
    rsync -a "$SRC"/ "$DEST"/
  else
    rsync -a "$SRC" "$DEST"
  fi
done

