#!/usr/bin/env bash

# Symlink configs
ln -sf "$PWD/.zshrc" ~/.zshrc
ln -sf "$PWD/.gitconfig" ~/.gitconfig

# Neovim
mkdir -p ~/.config/nvim
ln -sf "$PWD/nvim/init.lua" ~/.config/nvim/init.lua
