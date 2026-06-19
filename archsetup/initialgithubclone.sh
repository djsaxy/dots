#!/bin/sh

# Pull dotfiles from Github
# gh auth login --with-token < githubtoken.txt
mkdir ~/.dots
git clone https://github.com/djsaxy/dots.git ~/.dots
mv ~/.dots/.config ~/.config
# cd ~/.dots
# git init
# stow . --adopt
# cd ~
