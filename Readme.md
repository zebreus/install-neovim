# Install neovim in gitpod

Just set `https://github.com/Zebreus/install-neovim` as the source for your Dotfiles in your [gitpod.io/preferences](https://gitpod.io/preferences).

# How does it work

This repo contains a small script which downloads the neovim appimage and adds it to your `$PATH`

If you already have another repository for your dotfiles, you can probably just copy the content of `install.sh` somewhere into there.

You can select your neovim version by specifying the `NEOVIM_VERSION` environment variable [in gitpod](https://gitpod.io/variables). If unset it defaults the the latest version. You can set it to any [neovim tag](https://github.com/neovim/neovim/tags) (Like `v0.8.0`)
