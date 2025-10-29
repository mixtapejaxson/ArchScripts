#!/bin/bash
echo "Installing YAY (AUR wrapper)"
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
echo "Done!"
echo "Updating & Installing Arch Linux packages... This may take awhile"
sudo pacman -Syyu
sudo pacman -S --needed --noconfirm git fossil fish qalc fastfetch gimp podman podman-compose podman-docker podman-desktop distrobox tree less nvim zim zim-tools drawio-desktop nerd-fonts
echo "Done installing!"
echo "Installing AUR packages"
yay -S ungoogled-chromium-bin apple_cursor
