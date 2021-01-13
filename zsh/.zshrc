# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/jogger/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.vim"
alias pa="php artisan"
alias ip="ipconfig getifaddr en0"
alias c="clear"
alias tf="terraform"
alias python="python3"

# Fuzzy search via fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
