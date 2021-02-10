# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/jogger/.oh-my-zsh"

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
<<<<<<< HEAD
alias soundreset="sudo kill `ps -ax | grep 'coreaudiod' | grep 'sbin' |awk '{print $1}'`"
=======
alias python="python3"
>>>>>>> e3a0922a0486cf2b854bcfc86aee55f4ca76aa72

# Fuzzy search via fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

