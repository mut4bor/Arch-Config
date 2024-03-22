# Arch config

This is my Arch Hyprland config

- [Packages](#packages)
- [Setup](#setup)
  - [Config Setup](#config-setup)
  - [Autologin Setup](#autologin-setup)
- [Screenshots](#screenshots)

## Packages

- [Hyprland](https://wiki.archlinux.org/title/Hyprland)
- [Sway](https://wiki.archlinux.org/title/Sway)
- [Waybar](https://wiki.hyprland.org/Useful-Utilities/Status-Bars/#waybar)
- [sddm](https://wiki.archlinux.org/title/SDDM)
- [Rofi](https://wiki.archlinux.org/title/Rofi)
- [dunst](https://wiki.archlinux.org/title/Dunst)
- [kitty](https://wiki.archlinux.org/title/kitty)
- [fish](https://wiki.archlinux.org/title/Fish)
- [Dracula System and Icon Theme](https://draculatheme.com/gtk)

## Setup

#### Config Setup

```
git clone https://github.com/mut4bor/Arch-Config.git
cd Arch-Config
cp -r Arch-Config/.config/ ~/.config/
```

#### Autologin Setup

Copy file to sddm custom config directory

```
mkdir /etc/sddm.conf.d
cp autologin.conf /etc/sddm.conf.d/
```

Change `User=mut4bor` to `User=yourusername`

```
doas nano /etc/sddm.conf.d/autologin.conf
```

## Screenshots

![](screenshots/1.png)
![](screenshots/2.png)
![](screenshots/3.png)
