#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
. "$HOME/.cargo/env"
export PATH=opt/eww/:$PATH
export PATH=/home/manan/flutter/bin:$PATH
