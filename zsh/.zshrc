export PATH=$HOME/bin:/usr/local/bin:$HOME/.composer/vendor/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

# nvm 
source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm

ZSH_THEME="refined"
# SET ESCAPE TIMEOUT
KEYTIMEOUT=1

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias pa="php artisan"
alias ip="ipconfig getifaddr en0"
alias c="clear"
alias tf="terraform"
alias soundreset="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"
alias python="python3"

