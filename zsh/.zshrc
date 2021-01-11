# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/jogger/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.vim"

# Fuzzy search via fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
