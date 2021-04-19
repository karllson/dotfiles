#!/bin/bash

# Link zsh
ln -sf ~/dotfiles/zsh/config_linux ~/.zshrc

# Link neovim
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config

# Alacritty
rm -rf ~/.config/alacritty
mkdir -p ~/.config/alacritty
ln -sf ~/dotfiles/alacritty/alacritty_linux.yml ~/.config/alacritty/alacritty.yml

# i3
rm -rf ~/.config/i3
ln -sf ~/dotfiles/i3 ~/.config




