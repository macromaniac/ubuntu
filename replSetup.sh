#!/bin/bash

echo "for ubuntu 12"

#update
apt update
apt -y upgrade

#install neovim
apt -y install software-properties-common
add-apt-repository ppa:neovim-ppa/unstable -y
apt update
apt -y install neovim

#replace vim with neovim
apt -y remove vim
ln -s /usr/bin/nvim /usr/bin/vim

#copy over nvimrc
wget -P ~/.config/nvim/ raw.githubusercontent.com/macromaniac/vimrc/master/.config/nvim/init.vim

#install xclip
apt -y install xclip

echo "type vim -S to enter install session"
