#!/bin/bash
sudo echo "Making directories"
sudo rm -rf /usr/share/themes/adw-gtk3
sudo rm -rf /usr/share/themes/adw-gtk3-dark
sudo echo "Downloading theme archive"
wget https://github.com/lassekongo83/adw-gtk3/releases/download/v4.6/adw-gtk3v4-6.tar.xz
echo "Extracting theme archive to /usr/share/themes"
sudo tar -xf adw-gtk3v4-6.tar.xz -C /usr/share/themes
rm ./adw-gtk3v4-6.tar.xz
sudo echo "theme should now be installed"
