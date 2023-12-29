# 1882-dots

![full](Images/full.jpg "full")

## Credits:

Catppuccin - The theme used througout the rice.

Qeatrix - Wallpaper 

Various dotfiles for snippets of code and ideas

# Installation:

## Install script(recomended) 

Firstly, go to releases and download the install.sh release

Open a terminal in your download location, run these two commands:

```bash
sudo chmod +x install.sh
./install.sh
```

Do as the script tells you until it has finished

Next open kitty with Super + Enter and run:

```zsh
nwg-look
```

Select "Catppuccin-Macchiato-Standard-Blue-Dark" then press "apply". Next switch tabs to Icon Theme by pressing the buttion of the same name at the top, select Paprus-Dark, then hit apply again. you can now close all windows with Super + Q

Lastly you will need to reboot your device. When you reach the sddm screen, select hyprland and login to your account

If you have any issuses make an issue on github, dont message me.

## Manual

### These hyprland dotfiles can only be installed on arch linux or any arch based distrobution. It is posible to install them on other distros, such as openSUSE Tumbleweed, but issues will be prominent.

### These instruction have NOT been tested, please use the install script, thank you!

First of all, you need to install some packages. Run these command in a terminal of your choice:

```zsh
sudo pacman -S neofetch thunar dunst kvantum rofi swaylock waybar wofi ccache qt6ct qt6-wayland qt5-graphicaleffects qt5-svg qt5-quickcontrols2 zsh firefox kitty swaybg brightnessctl pamixer
```

```zsh
yay -S hyprland-git nwg-look wlogout picom ttf-jetbrains-mono-nerd catppuccin-gtk-theme-macchiato papirus-folders sddm-git
```

Next, download "Dots.zip" from the releases tab, unzip ther archive, then move all the files apart from "home.jpg" to ~/.config, home.jpg can go to ~/.Pictures

Restart your device then select hyprland from the sddm login, you should boot into hyprland

---

### Now your in hyprland you should get used to the important keybinds:

- Super + Enter = Kitty Terminal
- Super + W = Firefox 
- Super + E = Thunar File Manager
- Super + Space = Wofi Program Launcher
- Super + Q = Close Current Program
- Super + F = Toggle Floating
- Super + 1,2,3 etc = Change Workspacce
- Super + Shift + 1,2,3 etc = Move Program To Workspace
- Super + Esc = Shutdown, Logout etc

In most cases, Super is the Windows key

You can look through ~/.config/hypr/keybinds.conf to see the remainder of keybinds

---

### Apply Dotfiles

First, open kitty with Super + Enter and run:

```zsh
nwg-look
```

Select "Catppuccin-Macchiato-Standard-Blue-Dark" then press "apply". Next switch tabs to Icon Theme by pressing the buttion of the same name at the top, select Paprus-Dark, then hit apply again. you can now close all windows with Super + Q

---

Next, open kitty again and run this snippet of code:

```zsh
git clone https://github.com/catppuccin/Kvantum
```

You can then open kvantum by pressing Super + Space to open the program launcher search for kvantum and launch it. With kvantum open press "Select a Kvantum Theme" go to ~/kvantum, the folder just cloned, inside that open src then "catppuccin-macchiato-blue" then press "choose". Afterward press "Install This Theme" then "Chanage/Delete Theme", within this menu search for "catppuccin" and select "catppuccin-macchiato-blue" then press "Use This Theme". You can now clone all windows.

---

After this, you can yet again open kitty and run:

```zsh
yay -S papirus-folders-catppuccin-git
papirus-folders -C cat-macchiato-blue
```

When asked to remove paprus-folders, press y and enter

---

You may have some issues with waybar, some modules on the right may not be showing. Here is how you fix it:

First, open kitty and run:

```zsh
sudo chmod +x ~/.config/waybar/temp.py
```

If nothing gets fixed in kitty run:

```zsh
sudo nano ~/.config/warbar/config.jsonc
```

Go to line 12, scroll across and remove:

```nano
"custom/temp", "custom/divider",
```

If there is another missing module, click on it and it should load up. This issue should eventualy resolve itself.

---

To install the sddm theme open kitty and run:

```zsh
git clone https://github.com/catppuccin/sddm
cd sddm/src
cp -r catppuccin-macchiato /usr/share/sddm/themes/
```

Then run:

```zsh
sudo nano /etc/sddm.conf
```

Within this file add:

```nano
[Theme]
Current=catppuccin-macchiato
```

---

For kitty custiomization, run this to install oh my zsh:

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

When asked the change default kernal to zsh, press y and enter

Next install Powerlevel10k by running:

```zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
After the install is finished run:

```zsh
sudo nano ~/.zshrc
```

In this file find "ZSH_THEME" and change robbyrussell to:

```nano
powerlevel10k/powerlevel10k
```

Save and exit nano.

Once this is done Close and reopen kitty and you should be greeted by the powerlevel10k configuration screen. If you dont, run:

```zsh
p10k configure
```

You will need to answer a few questions to configure powerlevel10k. Answer them up to "Prompt Style" then press:

```
3 1 1 4 4 5 2 3 4 2 2 2 2 n 1 y
```

Afterwords run:

```zsh
sudo nano ~/.zshrc
```

And make the first line:

```nano
neofetch
```

For firefox customization, you can follow these guides:

https://github.com/catppuccin/firefox

https://github.com/catppuccin/dark-reader

Select macchiato and blue for both guides.

---

You can also have a look at firefox css to customize firefox more. Note not all designs work on linux

Visit the [Catppuccin github page](https://github.com/catppuccin/catppuccin) for lots more app designs!
