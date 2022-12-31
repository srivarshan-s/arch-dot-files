# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# ALIASES
alias ls='ls --color=auto'

# START FISH SHELL
exec fish
