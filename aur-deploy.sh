#!/bin/sh
###############################
# Script Author: Ahmed Maher
###############################

# Installing Paru (AUR Helper)
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -r paru

# Installing packages included in aur.md
paru -S --needed --skipreview $(cat aur.md | sed '/^\#/d' | sed '/^$/d' | tr '\n' ' ')
