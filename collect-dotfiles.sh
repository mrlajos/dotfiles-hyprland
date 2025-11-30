#!/usr/bin/env bash
set -euo pipefail

REPO="$HOME/dotfiles"

# List the paths you want to sync relative to $HOME
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

echo "Syncing configs to $REPO"

for item in "${ITEMS[@]}"; do
  SRC="$HOME/$item"
  DEST="$REPO/$item"

  if [ ! -e "$SRC" ]; then
    echo "Skipping $SRC (does not exist)"
    continue
  fi

  echo "→ $SRC  ->  $DEST"

  mkdir -p "$(dirname "$DEST")"

  # Copy recursively, keep permissions and timestamps
  # The trailing slashes here make rsync copy contents correctly.
  if [ -d "$SRC" ]; then
    rsync -a --delete "$SRC"/ "$DEST"/
  else
    rsync -a "$SRC" "$DEST"
  fi
done

echo "Done. Now you can:"
echo "  cd \"$REPO\" && git status"

