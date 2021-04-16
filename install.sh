#!/bin/bash

# Link zsh
ln -sf ~/dotfiles/zsh/config ~/.zshrc

# Link neovim
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config

# Alacritty
rm -rf ~/.config/alacritty
ln -sf ~/dotfiles/alacritty ~/.config

# TMux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# Kitty terminal
ln -sf ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf 


