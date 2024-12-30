<p align="center">
  <img src="https://github.com/harilvfs/assets/blob/main/dwm/Dwm.svg.png" alt="Terminal" width="100">
</p>

<strong>**This is a DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus). I’ve tweaked and configured the patches to suit my personal workflow, but it’s simple enough for anyone to use.** </strong>

<br>
  
![Terminal](https://github.com/harilvfs/assets/blob/main/dwm/dwm.png)

<br>

<strong>**Dependencies** </strong>

<details>
  <summary>Arch Linux</summary>

```bash
sudo pacman -S --needed base-devel git libx11 libxcb libxinerama libxft imlib2 meson ninja
```

</details> <details> <summary>Debian/Ubuntu-based</summary>

```bash
sudo apt install build-essential git libx11-dev libx11-xcb-dev libxcb-res0-dev libxinerama-dev libxft-dev libimlib2-dev meson ninja-build
```
</details>

<br>

## Installation

*For Installating necessary dependencies & stuffs run this command:*
```bash
bash <(curl -L https://raw.githubusercontent.com/harilvfs/dwm/refs/heads/main/setup.sh)
```

<strong>**Setup** </strong>

```bash
git clone https://github.com/harilvfs/dwm
cd dwm/
sudo make clean install
```

**Add this to your** `~/.xinitrc`

```
exec dwm
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

### Install Tmux Plugin Manager

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
wget https://raw.githubusercontent.com/harilvfs/dwm/refs/heads/main/config/tmux/tmux.conf ~/.config/tmux/
```

- Install Config Plugins

```bash
cd ~/.tmux/plugin/tpm/scripts/
chmod +x *.sh
./install_plugins.sh
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

```bash
git clone https://github.com/FT-Labs/picom.git ~/build/picom
cd ~/build/picom
meson setup --buildtype=release build
sudo ninja -C build install
```
### Dependencies

Assuming you already have all the usual building tools installed (e.g. gcc, python, meson, ninja, etc.)

## Project Overview
For one click installing & setup use my [Carch Project](https://github.com/harilvfs/carch)
