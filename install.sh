#!/usr/bin/env bash

export 1>&2
whoami 1>&2
pwd 1>&2


NIXSTART=$(date +%s.%N)
nix-env -iA nixpkgs.neovim
NIXEND=$(date +%s.%N)
NIXDIFF=$(echo "$NIXEND - $NIXSTART" | bc)

echo "Install with nix took $NIXDIFF" 1>&2

APTSTART=$(date +%s.%N)
sudo apt install --yes neovim
APTEND=$(date +%s.%N)
APTDIFF=$(echo "$APTEND - $APTSTART" | bc)
echo "Install with apt took $APTDIFF" 1>&2


APPIMAGESTART=$(date +%s.%N)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p /home/gitpod/.local/bin
ln -s $(pwd)/nvim.appimage /home/gitpod/.local/bin/nvim
APPIMAGEEND=$(date +%s.%N)
APPIMAGEDIFF=$(echo "$APPIMAGEEND - $APPIMAGESTART" | bc)
echo "Install as appimage took $APPIMAGEDIFF" 1>&2
