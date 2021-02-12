# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
# SET ESCAPE TIMEOUT
KEYTIMEOUT=1

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias vimrc="vim ~/.config/nvim/init.vim"
alias pa="php artisan"
alias ip="ipconfig getifaddr en0"
alias c="clear"
alias tf="terraform"
alias soundreset="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"
alias python="python3"

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

