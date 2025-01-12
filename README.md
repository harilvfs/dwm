<p align="center">
  <img src="https://github.com/harilvfs/assets/blob/main/dwm/Dwm.svg.png" alt="Terminal" width="200">
</p>

<strong>**This is a DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus). I’ve tweaked and configured the patches to suit my personal workflow, but it’s simple enough for anyone to use.** </strong>

<br>
  
![Terminal](https://github.com/harilvfs/assets/blob/main/dwm/dwm.png)

<br>

<strong>**Dependencies** </strong>

<details>
  <summary>Arch Linux</summary>

```bash
sudo pacman -S --needed --noconfirm base-devel libx11 libxinerama libxft imlib2 libxcb git unzip flameshot lxappearance feh mate-polkit meson libev uthash libconfig meson ninja
```

</details> <details> <summary>Debian/Ubuntu-based</summary>

```bash
sudo apt install -y build-essential libx11-dev libxinerama-dev libxft-dev libimlib2-dev libx11-xcb-dev libfontconfig1 libx11-6 libxft2 libxinerama1 libxcb-res0-dev git unzip flameshot lxappearance feh mate-polkit meson ninja-build
```
</details> <details> <summary>Fedora</summary>

```bash
sudo dnf install -y libX11-devel libXinerama-devel libXft-devel imlib2-devel libxcb-devel unzip flameshot lxappearance feh mate-polkit meson ninja-build
```

</details>

<br>

## Installation

*For Installating necessary dependencies & stuffs run this command:*
```bash
bash <(curl -L https://raw.githubusercontent.com/harilvfs/dwm/refs/heads/main/setup.sh)
```

<strong>**Install** </strong>

```bash
git clone https://github.com/harilvfs/dwm ~/
cd ~/dwm
sudo make clean install
```

<strong>Install slstatus</strong>

```bash
cd ~/dwm/slstatus
sudo make clean install
```

**Add this to your** `~/.xinitrc`

```
exec dwm &
slstatus
```

<br>

> [!IMPORTANT]
> After installation, remember to adjust some keybindings in `config.h` to fit your use case.

<br>

> [!NOTE]
> Default keybinding for terminal is `mod + x` and for rofi is `mod + r`.

## Tmux

### Install tmux

<details>
  <summary>Arch Linux</summary>
  
```bash
sudo pacman -S tmux
```

</details>

<details>
  <summary>Debian</summary>

```bash
sudo apt install tmux
```

</details>

<details>
  <summary>Fedora</summary>
  
```bash
sudo dnf install tmux
```

</details>

<details>
  <summary>openSUSE</summary>
  
```bash
sudo zypper install tmux
```

</details>

### Clone Tmux Plugin Manager [TPM]

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Configuration

- Create the configuration directory:

```bash
mkdir ~/.config/tmux
```

- Download the tmux configuration file:

```bash
wget -O ~/.config/tmux/tmux.conf https://raw.githubusercontent.com/harilvfs/dwm/refs/heads/main/config/tmux/tmux.conf
```

- Install Config Plugins

```bash
cd ~/.tmux/plugin/tpm/scripts/
chmod +x *.sh
./install_plugins.sh
```

### Install TPM

```bash
cd ~/.tmux/plugins/tpm
chmod +x tpm
./tpm
```

- Update Plugins

```bash
cd ~/.tmux/plugin/tpm/scripts/
./update_plugin.sh
```

## Picom

For transparency settings, check out this ➤ [Picom Config](https://raw.githubusercontent.com/harilvfs/i3wmdotfiles/main/picom/picom.conf).

For the inbuild animation of picom, check out this ➤ [FT-LABS](https://github.com/FT-Labs/picom)

### Installation with Animations

To use the inbuilt animations provided by FT-Labs `picom`, follow the steps below:

First Install Aur Helper (eg. paru or yay)

<details>
  <summary>Paru</summary>

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

</details>

<details>
  <summary>Yay</summary>

```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

</details>

#### Install Ftlab Picom Package

```bash
paru -S picom-ftlabs-git
```

picom-ftlabs-git Package Maintainer [fazzi](https://gitlab.com/fazzi/)

### Dependencies

Assuming you already have all the usual building tools installed (e.g. gcc, python, meson, ninja, etc.)

## Project Overview
For one click installing & setup use my [Carch Project](https://github.com/harilvfs/carch)
