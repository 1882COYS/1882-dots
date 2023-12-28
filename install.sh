#!/usr/bin/env bash

echo "Do You Have Yay installed?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd ~;;
    esac
done

echo INSTALLING PACMAN PREQUISITS...

sudo pacman -S neofetch thunar dunst kvantum rofi swaylock waybar wofi ccache qt6ct qt6-wayland qt5-graphicaleffects qt5-svg qt5-quickcontrols2 zsh kitty

echo INSTALLING AUR PREQUISITS...

yay -S hyprland-git nwg-look wlogout picom ttf-jetbrains-mono-nerd catppuccin-gtk-theme-macchiato papirus-folders sddm-git

echo CLONING REPO...

git clone https://github.com/1882COYS/1882-dots

cd 1882-dots

mv p10k.zsh .p10k.zsh && mv zshrc .zshrc

echo MOVING FILES...

cp -r dunst ~/.config
cp -r gtk-2.0 ~/.config
cp -r gtk-3.0 ~/.config
cp -r gtk-4.0 ~/.config
cp -r hypr ~/.config
cp -r Kvantum ~/.config
cp -r neofetch ~/.config
cp -r nwg-look ~/.config
cp -r qt6ct ~/.config
cp -r rofi ~/.config
cp -r swaylock ~/.config
cp -r Thunar ~/.config
cp -r waybar ~/.config
cp -r wlogout ~/.config
cp -r compton.conf ~/.config
