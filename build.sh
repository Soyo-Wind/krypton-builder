#!/bin/sh

# Upgrade archiso
pacman -Syy
pacman -Syu archiso

# git clone
git clone https://github.com/krypton-linux/krypton-iso.git

# makeiso
mkarchiso -v krypton-iso-main/krypton/ -o ~/

# if delete directory
if grep -n '-D' $1;then
    if grep -n 'w';then
        rm -rf work/
    fi
    if grep -n 'k';then
        rm -rf krypton-iso-main/
    fi
fi
