#!/bin/bash

# Install bash config
ln -nfs $(pwd)/dot-bashrc ~/.bashrc
ln -nfs $(pwd)/dot-bash_aliases ~/.bash_aliases

# Install fonts
ln -nfs $(pwd)/dot-fonts/ ~/.fonts
echo 'Please run "sudo fc-cache -fv" to update the font config!'

# Install git configs
if [ -f ~/.git-credentials ]; then
	echo "Git credentials file found in HOME directory!"
else
	cp dot-git-credentials ~/.git-credentials
fi
ln -nfs $(pwd)/dot-gitconfig ~/.gitconfig

# Install tmux config
ln -nfs $(pwd)/tmux.conf ~/.config/tmux/.

# Install starship config
ln -nfs $(pwd)/starship.toml ~/.config/.

# Install alacritty config
ln -nfs $(pwd)/alacritty ~/.config/.

# Install htop config
ln -nfs $(pwd)/htop ~/.config/.

# Install pacman and paru config
sudo ln -nfs $(pwd)/paru.conf /etc/.
sudo ln -nfs $(pwd)/pacman.conf /etc/.

# Install google-chrome flags
ln -nfs $(pwd)/chrome-flags.conf ~/.config/.

# Install pacman mirrorlist
sudo ln -nfs $(pwd)/mirrorlist /etc/pacman.d/.

# Install hosts file
sudo ln -nfs $(pwd)/hosts /etc/hosts

# Install cargo config
ln -nfs $(pwd)/dot-cargo/ ~/.cargo
