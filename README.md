<p align="center">
  <img src="https://github.com/harilvfs/assets/blob/main/dwm/Dwm.svg.png" alt="Terminal" width="200">
</p>

<div align="center">
DWM is a lightweight and dynamic window manager based on X11. It is minimalistic, efficient, and designed to be customized by editing its source code.  
</div>

<br>

![Terminal](https://github.com/harilvfs/assets/blob/main/dwm/dwm.png)

<br>

> [!NOTE]
> **This is a DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus).**
>
> **I’ve tweaked and configured the patches to suit my personal workflow, but it’s simple enough for anyone to use.** </strong>

## Dependencies

- Arch Linux [ <img src="https://img.icons8.com/?size=48&id=uIXgLv5iSlLJ&format=png" width="20" /> ]

```bash
sudo pacman -S --needed --noconfirm base-devel libx11 libxinerama libxft imlib2 libxcb git unzip flameshot lxappearance feh mate-polkit meson libev uthash libconfig meson ninja gnome-keyring
```

- Debian/Ubuntu-based [ <img src="https://img.icons8.com/?size=48&id=17838&format=png" width="20" /> ]

```bash
sudo apt install -y build-essential libx11-dev libxinerama-dev libxft-dev libimlib2-dev libx11-xcb-dev libfontconfig1 libx11-6 libxft2 libxinerama1 libxcb-res0-dev git unzip flameshot lxappearance feh mate-polkit meson ninja-build gnome-keyring
```

- Fedora [ <img src="https://img.icons8.com/?size=48&id=ZbBhBW0N2q3D&format=png" width="20" /> ]

```bash
sudo dnf install -y libX11-devel libXinerama-devel libXft-devel imlib2-devel libxcb-devel unzip flameshot lxappearance feh mate-polkit meson ninja-build gnome-keyring
```

- openSUSE [ <img src="https://cdn0.iconfinder.com/data/icons/flat-round-system/512/opensuse-512.png" width="20" /> ]

```bash
sudo zypper install libX11-devel libXinerama-devel libXft-devel imlib2-devel libxcb-devel unzip flameshot lxappearance feh mate-polkit meson ninja-build gnome-keyring
```

<br>

## **Nerd Fonts**  
Nerd Fonts are essential for improving font rendering and alignment in the `slstatus` bar, as well as ensuring consistent and accurate text display across the system. 

#### **Preferred Font**  
For this DWM setup, the `MesloLGS Nerd Font` is preconfigured. However, you may use any Nerd Font of your choice.  

- **Download**: `MesloLGS Nerd Font` From [nerdfonts.com](https://www.nerdfonts.com/font-downloads)

- **Setup Instructions**:
  - Download the font to `~/.fonts` or `~/.local/share/fonts`.
 
  - Run the following command to reload the fonts:  
    ```bash
    fc-cache -vf
    ```

## **Wallpapers**  
Wallpapers can greatly enhance the overall look of your setup. For this DWM configuration, the wallpapers should be stored in the `~/Pictures/wallpapers` directory.

- **Wallpaper Repository**:

  To access a collection of curated wallpapers, clone the repository to your `~/Pictures` directory by running the following command: 
  ```bash
  git clone https://github.com/harilvfs/wallpapers ~/Pictures
  ```

## **Configuration Files**  
Preconfigured package settings are included in this repository under the `config` folder.  

this are the main packages that are in .config folder in the repo you have to install as your preference and uses workflow

- Arch linux
  ```bash
  sudo pacman -S --needed --noconfirm kitty alacritty kvantum dunst fastfetch fish helix neovim picom rofi starship bash zsh
  ```
  **Install better discord as appimage or install via with aur helper paru or yay**

- Fedora
  ```bash
  sudo dnf install kitty alacritty kvantum dunst fastfetch fish helix neovim picom rofi bash zsh
  ```
  **install starship with this command `curl -sS https://starship.rs/install.sh | sh`
  
  **install better discrord app image from source https://betterdiscord.app/**

- Debian
  ```bash
  sudo apt install -y kitty alacritty qt5-style-kvantum fish neovim rofi dunst picom bash zsh
  ```
  **Debian / Ubuntu: Download fastfetch-linux-<proper architecture>.deb from [Github](https://github.com/fastfetch-cli/fastfetch/releases/tag/2.34.1) release page and double-click it (for Ubuntu 20.04 or newer and Debian 11 or newer).**

  **You need to install helix from source https://docs.helix-editor.com/install.html**
  **install better discrord app image from source https://betterdiscord.app/**
  **install starship with this command `curl -sS https://starship.rs/install.sh | sh`

  - opensuse
  ```bash
  sudo zypper install kitty alacritty kvantum-manager fish neovim rofi fastfetch dunst picom starship bash zsh
  ```
  **install better discrord app image from source https://betterdiscord.app/**

- **Usage**

  - Copy the configuration files to `~/.config`:

    ```bash
    cp -r config/* ~/.config/
    ```

> [!IMPORTANT]
> If you don’t have your own preconfigured setup, it is recommended to use the provided configs for better alignment with the DWM patches.  

## **Tmux**  
`Tmux` is a terminal multiplexer that plays a crucial role in my workflow.  

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

- Install Plugins

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
Picom is a standalone compositor for Xorg, suitable for use with window managers that do not provide compositing.

- For transparency settings, check out this Picom ➤ [Config](https://raw.githubusercontent.com/harilvfs/i3wmdotfiles/main/picom/picom.conf).

- For the inbuild animation of picom, check out ➤ [FT-LABS](https://github.com/FT-Labs/picom) repository

## **Systray Icons**  
The systray includes applets for `network management`, `Bluetooth`, and `sound control`.  

- **Packages**:  
  Install the necessary packages for your distribution:  
  - **Arch Linux**:  
    ```bash
    sudo pacman -S --needed --noconfirm network-manager-applet blueman pasystray
    ```
    
  - **Fedora**:  
    ```bash
    sudo dnf install network-manager-applet blueman pasystray
    ```
    
  - **Debian**:
    ```bash
    sudo apt install network-manager-applet blueman pasystray
    ```

  - **openSUSE**:
    ```bash
    sudo zypper install NetworkManager-applet blueman pasystray
    
  - **For other distributions, refer to the respective package manager documentation.**

## **SDDM Theme**  
The current setup uses the `Astronaut Theme` for SDDM.  

- Install and configure the theme using the official repository: [Keyitdev/sddm-astronaut-theme](https://github.com/Keyitdev/sddm-astronaut-theme)

## **GRUB Theme**  [OPTIONAL]
This step is optional for those who want to customize their bootloader.  

- Check out the bootloader theme repository by ChrisTitusTech: [Top-5-Bootloader-Themes](https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes)

## Installation

*For Installating necessary dependencies & stuffs run this command:*

```bash
bash <(curl -L https://raw.githubusercontent.com/harilvfs/dwm/refs/heads/main/setup.sh)
```

> [!NOTE]
> The script is optimized for newly installed Arch systems. If your system is heavily customized, manual way of installation is recommended.
> 
> Manual installation ensures all steps are clearly understood and avoids potential issues with automated scripts.

<strong>**Install DWM**</strong>

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

> [!IMPORTANT]
> After installation, remember to adjust some keybindings in `config.h` to fit your use case.

<br>

> [!NOTE]
> Default keybinding for terminal is `mod + x` and for rofi is `mod + r`.

## **Result**  
This guide provides a clear and reliable method for installing and configuring DWM on various distributions, including `Arch`, `Fedora`, `Debian`, `openSUSE`, and `Void Linux`.

> [!NOTE]
> Some distributions may require additional dependencies or configuration.
>
> Feel free to explore your distribution’s community for guidance on missing dependencies.  

## **Feedback and Contributions**  
If you encounter any issues or have suggestions, please open a pull request or issue in this repository.  
