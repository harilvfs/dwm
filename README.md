<p align="center">
  <img src="https://github.com/harilvfs/assets/blob/main/dwm/Dwm.svg.png" alt="Terminal" width="200">
</p>

## **About**  
DWM is a lightweight and dynamic window manager based on X11. It is minimalistic, efficient, and designed to be customized by editing its source code.  

> [!NOTE]
> This is a DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus).
>
> I’ve tweaked and configured the patches to suit my personal workflow, but it’s simple enough for anyone to use.** </strong>

<br>
  
![Terminal](https://github.com/harilvfs/assets/blob/main/dwm/dwm.png)

<br>

## Dependencies

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


## **Nerd Fonts**  
Nerd Fonts are a base dependency to enhance font alignment in the `slstatus` bar and ensure proper text display throughout the system.  

### **Preferred Font**  
For this DWM setup, the `MesloLGS Nerd Font` is preconfigured. However, you may use any Nerd Font of your choice.  

- **Download**: [MesloLGS Nerd Font](https://www.nerdfonts.com/font-downloads)  
- **Setup Instructions**:
  - Download the font to `~/.fonts` or `~/.local/share/fonts`.  
  - Run the following command to reload the fonts:  
     <pre><code>fc-cache -vf</code></pre>

<br>

## **Wallpapers**  
Wallpapers enhance the visual appeal of any setup. For this DWM configuration, wallpapers are expected to reside in the `~/Pictures/wallpapers` directory.  

- **Wallpaper Repository**:  
  - Clone my curated collection of beautiful wallpapers:  
  <pre><code>git clone https://github.com/harilvfs/wallpapers ~/Pictures</code></pre>

<br>

## **Configuration Files**  
Preconfigured package settings are included in this repository under the `config` folder.  

- **Usage**:  
  If you don’t have your own preconfigured setup, it is recommended to use the provided configs for better alignment with the DWM patches.  
  - Copy the configuration files to `~/.config`:  
    <pre><code>cp -r config/* ~/.config/</code></pre>

<br>

## **Tmux**  
`Tmux` is a terminal multiplexer that plays a crucial role in my workflow.  
- A detailed guide for setting up my tmux configuration will be added soon.  

<br>

## **Picom**  
`Picom` is a compositor for X11 that provides effects like transparency and blur. While optional, it can enhance your setup visually.  

- **Recommendation**:  
  Use my `picom` config from the `config` folder for a similar setup.  
- **Optional Transparency**:  
  If you dislike transparency, you can skip this step.

<br>

## **Systray Icons**  
The systray includes applets for network management, Bluetooth, and sound control.  

- **Packages**:  
  Install the necessary packages for your distribution:  
  - **Arch Linux**:  
    <pre><code>sudo pacman -S --needed --noconfirm network-manager-applet blueman-applet pasystray</code></pre>  
  - **Fedora**:  
    <pre><code>sudo dnf install network-manager-applet blueman-applet pasystray</code></pre>  
  - For other distributions, refer to the respective package manager documentation.

<br>

## **SDDM Theme**  
The current setup uses the **Astronaut Theme** for SDDM.  

- **Setup Instructions**:  
  Install and configure the theme using the official repository:  
  <pre><code>git clone https://github.com/Keyitdev/sddm-astronaut-theme</code></pre>

<br>

## **GRUB Theme**  
This step is optional for those who want to customize their bootloader.  

- **Recommendation**:  
  Check out Chris Titus Tech’s Linutil project for a seamless GRUB setup:  
  [Linutil Project](https://github.com/ChrisTitusTech/linutil)

<br>

## **Installing DWM**  
### **Using Setup Script**  
A setup script is included in this repository for Arch-based distributions.  
- **Usage**:  
  Run the script after cloning the repo:  
  <pre><code>./setup.sh</code></pre>  
  **Note**: The script is optimized for newly installed Arch systems. If your system is heavily customized, manual installation is recommended.

### **Manual Installation**  
Manual installation ensures all steps are clearly understood and avoids potential issues with automated scripts. A detailed guide is included in the repository for manual setup.

<br>

## **Result**  
This guide is designed to provide a comprehensive and reliable way to install and configure DWM across various distributions like Arch, Fedora, Debian, openSUSE, or Void Linux.  

**Note**:  
- Some distributions may require additional dependencies or research. For instance, Fedora might lack certain systray packages available in Arch.  
- Feel free to explore your distribution’s community for guidance on missing dependencies.  

<br>

### **Feedback and Contributions**  
If you encounter any issues or have suggestions, please open a pull request or issue in this repository.  


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
