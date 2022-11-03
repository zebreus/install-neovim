#!/usr/bin/env bash

cd $(mktemp -d)

URL="https://github.com/neovim/neovim/releases/latest/download/nvim.appimage"
if test -n "$NEOVIM_VERSION"
then
    URL="https://github.com/neovim/neovim/releases/download/$NEOVIM_VERSION/nvim.appimage"
fi

curl -LO "$URL"
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract >/dev/null
mkdir -p /home/gitpod/.local/bin
ln -s $(pwd)/squashfs-root/AppRun /home/gitpod/.local/bin/nvim

# Benchmarking different ways of installing nvim

# NIXSTART=$(date +%s.%N)
# source $HOME/.profile
# nix-env -iA nixpkgs.neovim
# NIXEND=$(date +%s.%N)
# NIXDIFF=$(echo "$NIXEND - $NIXSTART" | bc)
# echo "Install with nix took $NIXDIFF" 1>&2
# # Install with nix took 12.794308385


# APTSTART=$(date +%s.%N)
# sudo apt install --yes neovim
# APTEND=$(date +%s.%N)
# APTDIFF=$(echo "$APTEND - $APTSTART" | bc)
# echo "Install with apt took $APTDIFF" 1>&2
# # Install with apt took 5.360583211


# APPIMAGESTART=$(date +%s.%N)
# curl -LO "https://github.com/neovim/neovim/releases/${${NVIM_VERSION:+download/$NVIM_VERSION}:-latest/download}/nvim.appimage"
# chmod u+x nvim.appimage
# ./nvim.appimage --appimage-extract >/dev/null
# mkdir -p /home/gitpod/.local/bin
# ln -s $(pwd)/squashfs-root/AppRun /home/gitpod/.local/bin/nvim
# APPIMAGEEND=$(date +%s.%N)
# APPIMAGEDIFF=$(echo "$APPIMAGEEND - $APPIMAGESTART" | bc)
# echo "Install as appimage took $APPIMAGEDIFF" 1>&2
# # Install as appimage took 3.029663746
