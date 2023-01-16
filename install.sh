#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# INSTALL BASHRC
ln -nfs ${BASEDIR}/.bashrc ~/.

# INSTALL FONTS
ln -nfs ${BASEDIR}/.fonts ~/.

# INSTALL GIT CONFIG
ln -nfs ${BASEDIR}/.gitconfig ~/.

# INSTALL TMUX CONFIG
ln -nfs ${BASEDIR}/.tmux.conf ~/.

# INSTALL STARSHIP PROMPT CONFIG
ln -nfs ${BASEDIR}/starship.toml ~/.config/.

# INSTALL ALACRITTY
ln -nfs ${BASEDIR}/alacritty ~/.config/.

# INSTALL PACMAN & PARU
sudo ln -nfs ${BASEDIR}/paru.conf /etc/.
sudo ln -nfs ${BASEDIR}/pacman.conf /etc/.

# INSTALL CHROME FLAGS
ln -nfs ${BASEDIR}/chrome-flags.conf ~/.config/.

# INSTALL GIT CREDENTIALS
cp ${BASEDIR}/.git-credentials ~/.

# INSTALL PACMAN MIRRORLIST
sudo ln -nfs ${BASEDIR}/mirrorlist /etc/pacman.d/.

# INSTALL PACMAN PACKAGES
sudo pacman -S $(cat pacman_package_list.txt)

# INSTALL AUR PACKAGES
if command -v paru &> /dev/null
then
    paru -S $(cat aur_package_list.txt)
fi
if ! command -v paru &> /dev/null
then
    echo "Install paru to install aur packages!"
fi
