#!/usr/bin/env bash
# Symlink each package's files into $HOME, backing up anything already there.
set -euo pipefail
cd "$(dirname "$0")"
for pkg in */; do
  pkg=${pkg%/}
  find "$pkg" -type f | while read -r src; do
    dest="$HOME/${src#"$pkg"/}"
    mkdir -p "$(dirname "$dest")"
    if [ -e "$dest" ] && [ ! -L "$dest" ]; then
      mv "$dest" "$dest.bak"
      echo "backed up $dest -> $dest.bak"
    fi
    ln -sfn "$PWD/$src" "$dest"
    echo "linked $dest"
  done
done
