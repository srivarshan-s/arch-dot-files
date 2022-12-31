#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# INSTALL BASHRC
ln -nfs ${BASEDIR}/.bashrc ~/.bashrc

# INSTALL FONTS
ln -nfs ${BASEDIR}/.fonts ~/.fonts

# INSTALL GIT CONFIG
ln -nfs ${BASEDIR}/.gitconfig ~/.gitconfig

# INSTALL TMUX CONFIG
ln -nfs ${BASEDIR}/.tmux.conf ~/.tmux.conf

# INSTALL ALACRITTY
ln -nfs ${BASEDIR}/alacritty ~/.config/.

# INSTALL FISH
ln -nfs ${BASEDIR}/fish ~/.config/.

# INSTALL PACMAN & PARU
sudo ln -nfs ${BASEDIR}/paru.conf /etc/paru.conf
sudo ln -nfs ${BASEDIR}/pacman.conf /etc/pacman.conf

# INSTALL CHROME FLAGS
ln -nfs ${BASEDIR}/chrome-flags.conf ~/.config/chrome-flags.conf
