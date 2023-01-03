# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Aliases
alias ls='exa --color=auto'
alias tmux='tmux -u'
alias paru='paru --skipreview'

# Docker Functions
my-ubuntu-dev () {
    docker run -it --name my-ubuntu -v $(pwd):/workspace ubuntu-dev-1
    docker commit my-ubuntu ubuntu-dev-1
    docker rm my-ubuntu
}

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

# Auto "cd" when entering just a path
shopt -s autocd
