#!/bin/bash

# Link zsh
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc

# Link neovim
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config

# Alacritty
rm -rf ~/.config/alacritty
ln -sf ~/dotfiles/alacritty ~/.config

# TMux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Yabai window manager
ln -sf ~/dotfiles/yabai/config ~/.yabairc
chmod +x ~/.yabairc

