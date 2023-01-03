# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# ALIASES
alias ls='ls --color=auto'

# DOCKER FUNCTIONS
my-ubuntu-dev () {
    docker run -it --name my-ubuntu -v $(pwd):/workspace ubuntu-dev-1
    docker commit my-ubuntu ubuntu-dev-1
    docker rm my-ubuntu
}

# START FISH SHELL
exec fish
