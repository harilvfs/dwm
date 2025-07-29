<p align="center">
  <img src="https://raw.githubusercontent.com/harilvfs/assets/refs/heads/main/dwm/Dwm.png" alt="Terminal" width="200">
</p>

<div align="center">
  
**DWM** is a lightweight and dynamic window manager based on X11. It is minimalistic, efficient, and designed to be customized by editing its source code. ✨

<br>

  <a href="#setup-manually"><kbd> <br> Manual Setup [ Including All ] <br> </kbd></a>&ensp;&ensp;
  <a href="#-installation-script"><kbd> <br> Setup Script <br> </kbd></a>&ensp;&ensp;
  <a href="https://github.com/harilvfs/dwm/tree/main/.github"><kbd> <br> TTY Stuffs [ Optional ] <br> </kbd></a>
  
</div><br><br>

<div align="center">

<img src="https://img.shields.io/github/issues/harilvfs/dwm?style=for-the-badge&color=dbb6ed&logoColor=85e185&labelColor=1c1c29" /> <img src="https://img.shields.io/github/issues-pr/harilvfs/dwm?style=for-the-badge&color=ef9f9c&logoColor=85e185&labelColor=1c1c29" /> <img src="https://img.shields.io/github/last-commit/harilvfs/dwm?style=for-the-badge&logo=github&color=7dc4e4&logoColor=D9E0EE&labelColor=1c1c29"/> <img src="https://img.shields.io/github/stars/harilvfs/dwm?style=for-the-badge&logo=apachespark&color=eed49f&logoColor=D9E0EE&labelColor=1c1c29"/>

[![Discord](https://img.shields.io/discord/757266205408100413.svg?label=Discord&logo=Discord&style=for-the-badge&color=8bd5ca&logoColor=e78284&labelColor=1c1c29)](https://discord.com/invite/8NJWstnUHd) [![Telegram Channel](https://img.shields.io/badge/harilvfs-Telegram-c6a0f6?style=for-the-badge&logo=telegram&labelColor=1c1c29)](https://t.me/harilvfs)

</div>

![Terminal](https://github.com/harilvfs/assets/blob/main/dwm/dwm.png)

<br>

> [!NOTE]
> **This guide features DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus), tweaked to suit my personal workflow while remaining simple for anyone to use.**

**I recommend to use manual way to setup and install dwm. But if you perfer a easy way then, Check Installation Script Guide [here](#-installation-script)**

## Setup Manually

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
git clone https://github.com/harilvfs/wallpapers ~/Pictures
```

## ⚙️ Configuration Files  

Preconfigured package settings are included in this repository under the `config` folder. These settings enhance the DWM experience and can be installed based on your workflow and distribution.  

### **Steps to Install Configurations**

- Install the necessary packages for your distribution.
- Copy the preconfigured files to your `~/.config` directory.

### **Package Installation by Distribution**  

#### Arch Linux  
> <img src="https://img.icons8.com/?size=48&id=uIXgLv5iSlLJ&format=png" width="20" />
 
```bash
sudo pacman -S --needed --noconfirm kitty alacritty kvantum dunst fastfetch fish helix neovim picom rofi starship bash zsh ghostty
```
- **BetterDiscord**: Install as an AppImage or via AUR using `paru` or `yay`.  
  ```bash
  yay -S betterdiscord-installer
  ```
  
#### Fedora  
> <img src="https://img.icons8.com/?size=48&id=ZbBhBW0N2q3D&format=png" width="20" />

```bash
sudo dnf install kitty alacritty kvantum dunst fastfetch fish helix neovim picom rofi bash zsh
```
- **Starship**: Install using the official script:
  ```bash
  curl -sS https://starship.rs/install.sh | sh
  ```
- **BetterDiscord**: Download the AppImage from the [official website](https://betterdiscord.app/).

> **Ghostty**: Download Ghostty Terminal 
> ```bash
> dnf copr enable pgdev/ghostty
> dnf install ghostty
>```

#### Debian/Ubuntu  
> <img src="https://img.icons8.com/?size=48&id=17838&format=png" width="20" />
 
```bash
sudo apt install -y kitty alacritty qt5-style-kvantum fish neovim rofi dunst picom bash zsh
```
- **Fastfetch**: Download the appropriate `.deb` package from [Fastfetch's release page](https://github.com/fastfetch-cli/fastfetch/releases) and install it:
  ```bash
  sudo dpkg -i fastfetch-linux-<architecture>.deb
  ```
- **Helix**: Install from source using the [Helix documentation](https://docs.helix-editor.com/install.html).
- **BetterDiscord**: Download the AppImage from the [official website](https://betterdiscord.app/).
- **Starship**: Install using the official script:
  ```bash
  curl -sS https://starship.rs/install.sh | sh
  ```
> **Ghostty**: Download Ghostty Terminal
> ```bash
> echo 'deb http://download.opensuse.org/repositories/home:/clayrisser:/bookworm/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/home:clayrisser:bookworm.list
> curl -fsSL https://download.opensuse.org/repositories/home:clayrisser:bookworm/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_clayrisser_bookworm.gpg > /dev/null
> sudo apt update
> sudo apt install ghostty
> ```

#### openSUSE  
> <img src="https://raw.githubusercontent.com/harilvfs/assets/refs/heads/main/suse/opensuse.png" width="20" />

```bash
sudo zypper install kitty alacritty kvantum-manager fish neovim rofi fastfetch dunst picom starship bash zsh ghostty
```
- **BetterDiscord**: Download the AppImage from the [official website](https://betterdiscord.app/).

### **Using Preconfigured Files**  

Once the required packages are installed, copy the preconfigured files to your `.config` directory:

```bash
cp -r config/* ~/.config/
```

> [!IMPORTANT]  
> If you don’t have a preconfigured setup, it’s recommended to use the provided configurations for better compatibility with the DWM patches.

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

## SDDM Theme 
The setup uses the **Astronaut Theme** for SDDM.  

- **Installation**:  
  Clone the theme repository and follow the instructions to install:  
  [Keyitdev/sddm-astronaut-theme](https://github.com/Keyitdev/sddm-astronaut-theme)

## GRUB Theme [OPTIONAL]  
Customize your bootloader appearance with GRUB themes.  

- Explore themes from ChrisTitusTech's repository:  
  [Top-5-Bootloader-Themes](https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes)

> **Note**: Ensure GRUB customization aligns with your workflow and is applied carefully to avoid bootloader issues.

## Tmux
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

## Clone and install DWM

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

**Add this to your** `~/.xinitrc` & `~/.xsession`

```
exec dwm
```

> [!IMPORTANT]
> After installation, remember to adjust some keybindings in `config.h` to fit your use case.

<br>

> [!NOTE]
> Default keybinding for terminal is `mod + x` and for rofi is `mod + r`.

---

## 🛠 Installation Script

**For a one click setup process, run the script:**

> [!NOTE]  
> Before running this script, make sure `curl` is installed.  
>
> **For Arch-based distros:**  
> ```sh
> sudo pacman -S curl --noconfirm
> ```  
>
> **For Fedora-based distros:**  
> ```sh
> sudo dnf install curl -y
> ```  
>
> **For openSUSE:**  
> ```sh
> sudo zypper install -y curl
> ```

**After that, run this command in your terminal.**

```bash
bash <(curl -L https://chalisehari.com.np/dwm)
```

> [!NOTE]
> Btw remember this script is only for Arch, Fedora & openSUSE-based distros. Manual installation is recommended for other distributions or customized setups.
