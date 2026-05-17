# Setup Manually

## Dependencies

### Arch Linux  
> <img src="https://img.icons8.com/?size=48&id=uIXgLv5iSlLJ&format=png" width="20" />

```bash
sudo pacman -S --needed --noconfirm base-devel libx11 libxinerama libxft imlib2 libxcb git unzip flameshot lxappearance feh mate-polkit meson libev uthash libconfig meson ninja gnome-keyring thunar trash-cli
```

### Debian/Ubuntu  
> <img src="https://img.icons8.com/?size=48&id=17838&format=png" width="20" />

```bash
sudo apt install -y build-essential libx11-dev libxinerama-dev libxft-dev libimlib2-dev libx11-xcb-dev libfontconfig1 libx11-6 libxft2 libxinerama1 libxcb-res0-dev git unzip flameshot lxappearance feh mate-polkit meson ninja-build gnome-keyring thunar trash-cli
```

### Fedora  
> <img src="https://img.icons8.com/?size=48&id=ZbBhBW0N2q3D&format=png" width="20" />

```bash
sudo dnf install -y libX11-devel libXinerama-devel libXft-devel imlib2-devel libxcb-devel unzip flameshot lxappearance feh mate-polkit meson ninja-build gnome-keyring thunar trash-cli
```

### openSUSE  
> <img src="https://raw.githubusercontent.com/harilvfs/assets/refs/heads/main/suse/opensuse.png" width="20" />

```bash
sudo zypper install libX11-devel libXinerama-devel libXft-devel imlib2-devel libxcb-devel unzip flameshot lxappearance feh mate-polkit meson ninja-build gnome-keyring thunar trash-cli
```

<br>

## Clone and install DWM

```bash
git clone https://github.com/harilvfs/dwm ~/dwm
cd ~/dwm
sudo make clean install
```

<strong>Install slstatus</strong>

```bash
cd ~/dwm/slstatus
sudo make clean install
```

**Add this to your** `~/.xinitrc` & `~/.xsession`

```
exec dwm
```

> [!IMPORTANT]
> After installation, remember to adjust some keybindings in `config.h` to fit your use case.

<br>

> [!NOTE]
> Default keybinding for terminal is `mod + x` and for rofi is `mod + r`.

## 🔠 Nerd Fonts

### Why Nerd Fonts?  
Nerd Fonts enhance font rendering and ensure proper alignment of icons in `slstatus`. For this setup, the **MesloLGS Nerd Font** is recommended.

### Arch Linux  
> <img src="https://img.icons8.com/?size=48&id=uIXgLv5iSlLJ&format=png" width="20" />
```bash
sudo pacman -S --needed --noconfirm ttf-meslo-nerd noto-fonts-emoji ttf-joypixels ttf-cascadia-mono-nerd ttf-cascadia-code-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono
```

### Other Distributions 
  - **Download** from: [nerdfonts.com](https://www.nerdfonts.com/font-downloads)
  - Place the font files in `~/.fonts` or `~/.local/share/fonts`.
  - Refresh font cache:
    ```bash
    fc-cache -vf
    ```

## 🎨 Wallpapers

### Directory Setup
Store wallpapers in `~/Pictures/wallpapers`. Use the following command to clone a curated wallpaper collection:

```bash
git clone https://github.com/harilvfs/wallpapers 
```

## Picom Configuration

Picom provides window transparency and animations.  

- **Config File**: [Picom Config](https://raw.githubusercontent.com/harilvfs/i3wmdotfiles/main/picom/picom.conf)
- **Animations**: Check out [FT-LABS](https://github.com/FT-Labs/picom).

## System Tray Icons

Install system tray applets for network, Bluetooth, and sound management. 

- **Packages**:  
  Install the necessary packages for your distribution:
  
### Arch Linux  
> <img src="https://img.icons8.com/?size=48&id=uIXgLv5iSlLJ&format=png" width="20" />

  ```bash
  sudo pacman -S --needed --noconfirm network-manager-applet blueman pasystray
  ```
    
### Fedora  
> <img src="https://img.icons8.com/?size=48&id=ZbBhBW0N2q3D&format=png" width="20" />

  ```bash
  sudo dnf install network-manager-applet blueman pasystray
  ```
    
### Debian/Ubuntu  
> <img src="https://img.icons8.com/?size=48&id=17838&format=png" width="20" />

  ```bash
  sudo apt install network-manager-applet blueman pasystray
  ```

### openSUSE  
> <img src="https://raw.githubusercontent.com/harilvfs/assets/refs/heads/main/suse/opensuse.png" width="20" />

  ```bash
  sudo zypper install NetworkManager-applet blueman pasystray
  ```

> **Notes** : **For other distributions, refer to the respective package manager documentation.**

## ⚙️ Configuration Files (Optional) 

Preconfigured package settings are included in this repository under the `config` folder. These settings enhance the DWM experience and can be installed based on your workflow and distribution.  

<details>
  <summary>Click to expand</summary>

### **Steps to Install Configurations**

- Install the necessary packages for your distribution.
- Copy the preconfigured files to your `~/.config` directory.

</details>

## SDDM Theme (Optional) 

<details>
  <summary>Click to expand</summary>

The setup uses the **Astronaut Theme** for SDDM.  

- **Installation**:  
  Clone the theme repository and follow the instructions to install:  
  [Keyitdev/sddm-astronaut-theme](https://github.com/Keyitdev/sddm-astronaut-theme)

</details>

## GRUB Theme (OPTIONAL)  

<details>
  <summary>Click to expand</summary>

Customize your bootloader appearance with GRUB themes.  

- Explore themes from ChrisTitusTech's repository:  
  [Top-5-Bootloader-Themes](https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes)

> **Note**: Ensure GRUB customization is applied carefully to avoid bootloader issues.

</details>

## Tmux (Optional)

<details>
  <summary>Click to expand</summary>

Incase if you want tmux or if you are already familiar with tmux then follow this step to setup: 

Assuming you have tmux installed in your system.

### Clone Tmux Plugin Manager [TPM]

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Configuration

#### Create the configuration directory:

```bash
mkdir ~/.config/tmux
```

#### Download the tmux configuration file:

```bash
wget -O ~/.config/tmux/tmux.conf https://raw.githubusercontent.com/harilvfs/dwm/refs/heads/main/config/tmux/tmux.conf
```

#### Install Plugins

```bash
cd ~/.tmux/plugins/tpm/scripts/ &&
chmod +x install_plugins.sh &&
./install_plugins.sh
```

#### Install TPM

```bash
cd ~/.tmux/plugins/tpm &&
chmod +x tpm &&
./tpm
```

#### Update Plugins [ Optional ]

```bash
cd ~/.tmux/plugins/tpm/scripts/ &&
chmod +x update_plugin.sh &&
./update_plugin.sh
```

</details>
