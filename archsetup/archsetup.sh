#!/bin/bash

# Set up arch for use with my dotfiles to run DWM

# Update system
sudo pacman -Syu

# Install pacman packages
sudo pacman -S --needed git base-devel xorg xorg-xinit xorg-xrandr xorg-xset ranger vim nautilus fastfetch bluez blueman ttf-jetbrains-mono htop tailscale syncthing --noconfirm
# sudo pacman -S --needed stow github-cli remmina freerdp

Install yay
git clone https://aur.archlinux.org/yay.git ~/.config/yay
cd ~/.config/yay
makepkg -si
cd ~

# Install AUR packages
# yay -S xrdp xorgxrdp --noconfirm
yay -S helium-browser-bin arch-update --noconfirm

# Make scripts executable
chmod +x ./archsetup/initialgithubclone.sh
chmod +x ./archsetup/dwm.sh
# chmod +x ./archsetup/xinitrc.sh
# chmod +x ./archsetup/touchpad.sh
# chmod +x ./archsetup/tailscale.sh

# Clone dotfiles from Github
./archsetup/initialgithubclone.sh

# Turn on Tailscale
# ./archsetup/tailscale.sh

# Setup Syncthing
# ./archsetup/syncthing.sh

# Install DWM
./archsetup/dwm.sh

# Write .xintirc file
# ./archsetup/xinitrc.sh

# Turn on Tapping on Touchpad
# ./archsetup/touchpad.sh

# Turn on Num Lock at Boot
# ./archsetup/numlockatboot.sh

# Reboot to set all changes
# sudo reboot
