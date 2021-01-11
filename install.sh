#!/bin/bash

# Install Fuzzy search engine and useful keybindings
brew install fzf
$(brew --prefix)/opt/fzf/install

# Install color highlighting and command line previews
brew install bat

# Link zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.nvim/bundle/Vundle.vi

# Link neovim
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/nvim ~/.config
