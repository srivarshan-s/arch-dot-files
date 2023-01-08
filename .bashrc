# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Aliases
alias ls='exa --color=auto'
alias tmux='tmux -u'
alias paru='paru --skipreview'

# Starship Prompt
eval "$(starship init bash)"

# Source /etc/bash.bashrc
source /etc/bash.bashrc

# History Completion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# History Customization
export HISTCONTROL="erasedups:ignorespace"

# Command not found
source /usr/share/doc/pkgfile/command-not-found.bash

# Replacing vi and vim with neovim
export VISUAL="nvim"
export EDITOR="nvim"
