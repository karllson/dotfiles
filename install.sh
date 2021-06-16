#!/bin/bash

# Link zsh
ln -sf ~/dotfiles/zsh/config ~/.zshrc

# Link neovim
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config

# Alacritty
rm -rf ~/.config/alacritty
mkdir -p ~/.config/alacritty
ln -sf ~/dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# TMux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf


