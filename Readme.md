# Install neovim in gitpod

Set `https://github.com/Zebreus/install-neovim` as the Dotfiles repo in your [gitpod.io/preferences](https://gitpod.io/preferences).


### How does it work

This repo contains a small script which downloads the neovim appimage and adds it to your `$PATH`

If you already have another repository for your dotfiles, you can probably just copy the content of `install.sh` somewhere into there.

If you need a specific neovim version, you can select it by specifying the `NEOVIM_VERSION` environment variable [in gitpod](https://gitpod.io/variables). If the var is not set it defaults the the latest version. All neovim tags are [neovim tags](https://github.com/neovim/neovim/tags) valid values (Like `v0.8.0`).
