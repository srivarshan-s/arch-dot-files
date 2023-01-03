# STARSHIP PROMPT
starship init fish | source

# DOCKER FUNCTIONS
function my-ubuntu-dev
    docker run -it --name my-ubuntu -v $(pwd):/workspace ubuntu-dev-1
    docker commit my-ubuntu ubuntu-dev-1
    docker rm my-ubuntu
end

# ALIASES
alias paru='paru --skipreview'
alias ls='exa'
alias tmux='tmux -u'
