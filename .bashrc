#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
# Colored user@host prompt
PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[38;5;208m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '

