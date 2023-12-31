#!/usr/bin/env bash

echo "Do You Have Yay installed?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si && cd ~ && exit;;
    esac
done

echo Installation may take some time, please be patient!!

sleep 3

echo INSTALLING PACMAN PREQUISITS...

sudo pacman -S neofetch thunar dunst kvantum waybar wofi ccache qt6ct qt6-wayland qt5-graphicaleffects qt5-svg qt5-quickcontrols2 zsh kitty pamixer brightnessctl swaybg 

echo INSTALLING AUR PREQUISITS...

yay -S hyprland-git nwg-look wlogout picom ttf-jetbrains-mono-nerd catppuccin-gtk-theme-macchiato papirus-folders sddm-git noto-fonts

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
cp -r wofi ~/.config
cp -r swaylock ~/.config
cp -r Thunar ~/.config
cp -r waybar ~/.config
cp -r wlogout ~/.config
cp -r compton.conf ~/.config
cp -r kitty ~/.config
mkdir ~/Pictures
cp -r home.jpg ~/Pictures

cp -r .p10k.zsh ~/

sudo chmod +x ~/.config/waybar/temp.py

echo When prompted to remove papirus folders press y and enter

sleep 3

yay -S papirus-folders-catppuccin-git

papirus-folders -C cat-macchiato-blue

git clone https://github.com/catppuccin/sddm

cd sddm/src

sudo cp -r catppuccin-macchiato /usr/share/sddm/themes/

cd .. && cd .. 

sudo cp -r sddm.conf /etc

echo Refer back to github page to complete.

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

