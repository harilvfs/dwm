#!/bin/bash

RC='\033[0m'
RED='\033[31m'
YELLOW='\033[33m'
CYAN='\033[36m'
GREEN='\033[32m'

install_arch() {
sudo pacman -S --needed base-devel libx11 libxinerama libxft imlib2 libxcb git unzip flameshot lxappearance feh mate-polkit meson libev uthash libconfig ninja xorg-xinit xorg-server noto-fonts-emoji ttf-joypixels 
}

echo "Installing packages using pacman"
install_arch

DWM() {
    cd "$HOME" && git clone https://github.com/harilvfs/dwm.git 
    cd dwm/ 
    sudo make clean install
}

install_nerd_font() {
    FONT_DIR="$HOME/.local/share/fonts"
    FONT_ZIP="$FONT_DIR/Meslo.zip"
    FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip"
    FONT_INSTALLED=$(fc-list | grep -i "Meslo")

    if [ -n "$FONT_INSTALLED" ]; then
        echo "Meslo Nerd-fonts are already installed."
        return 0
    fi

    echo "Installing Meslo Nerd-fonts"

    if [ ! -d "$FONT_DIR" ]; then
        mkdir -p "$FONT_DIR" || {
            echo "Failed to create directory: $FONT_DIR"
            return 1
        }
    fi

    if [ ! -f "$FONT_ZIP" ]; then
        wget -P "$FONT_DIR" "$FONT_URL" || {
            echo "Failed to download Meslo Nerd-fonts from $FONT_URL"
            return 1
        }
    fi

    if [ ! -d "$FONT_DIR/Meslo" ]; then
        unzip "$FONT_ZIP" -d "$FONT_DIR" || {
            echo "Failed to unzip $FONT_ZIP"
            return 1
        }
    fi

    rm "$FONT_ZIP" || {
        echo "Failed to remove $FONT_ZIP"
        return 1
    }

    fc-cache -fv || {
        echo "Failed to rebuild font cache"
        return 1
    }

    echo "Meslo Nerd-fonts installed successfully"
}

picom_animations() {
    mkdir -p "$HOME/.local/share/"
    if [ ! -d "$HOME/.local/share/ftlabs-picom" ]; then
        if ! git clone https://github.com/FT-Labs/picom.git "$HOME/.local/share/ftlabs-picom"; then
            printf "%b\n" "${RED}Failed to clone the repository${RC}"
            return 1
        fi
    else
        printf "%b\n" "${GREEN}Repository already exists, skipping clone${RC}"
    fi

    cd "$HOME/.local/share/ftlabs-picom" || { printf "%b\n" "${RED}Failed to change directory to picom${RC}"; return 1; }

    if ! meson setup --buildtype=release build; then
        printf "%b\n" "${RED}Meson setup failed${RC}"
        return 1
    fi

    if ! ninja -C build; then
        printf "%b\n" "${RED}Ninja build failed${RC}"
        return 1
    fi

    if ! sudo ninja -C build install; then
        printf "%b\n" "${RED}Failed to install the built binary${RC}"
        return 1
    fi

    printf "%b\n" "${GREEN}Picom animations installed successfully${RC}"
}

picom_conf() {
    local url="https://raw.githubusercontent.com/harilvfs/dwm/refs/heads/main/config/picom/picom.conf"
    local config_dir="$HOME/.config"
    local destination="$config_dir/picom.conf"

    mkdir -p "$config_dir"

    echo "Downloading picom configuration file..."

    if command -v wget > /dev/null 2>&1; then
        wget -q -O "$destination" "$url" && echo "Picom configuration downloaded to $destination"
    elif command -v curl > /dev/null 2>&1; then
        curl -s -o "$destination" "$url" && echo "Picom configuration downloaded to $destination"
    else
        echo "Error: Neither wget nor curl is available on this system."
        return 1
    fi
}

clone_config_folders() {
    [ ! -d ~/.config ] && mkdir -p ~/.config

    for dir in config/*/; do
        dir_name=$(basename "$dir")

        if [ -d "$dir" ]; then
            cp -r "$dir" ~/.config/
            printf "%b\n" "${GREEN}Cloned $dir_name to ~/.config/${RC}"
        else
            printf "%b\n" "${RED}Directory $dir_name does not exist, skipping${RC}"
        fi
    done
}

configure_backgrounds() {
    BG_DIR="$HOME/Pictures/wallpapers"

    if [ ! -d "~/Pictures" ]; then
        mkdir ~/Pictures
        echo "Pictures directory created in Home folder"
    fi

    if [ ! -d "$BG_DIR" ]; then
        https://github.com/harilvfs/wallpapers ~/Pictures || {
            echo "Failed to clone the repository"
            return 1
        }
        echo "Downloaded desktop backgrounds to $BG_DIR"
    else
        echo "Path $BG_DIR exists, skipping download of backgrounds"
    fi
}

install_slstatus() {
    printf "Do you want to install slstatus? (y/N): " 
    read -r response 
    if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
        printf "%b\n" "${YELLOW}Installing slstatus${RC}"
        cd "$HOME/dwm/slstatus" || { printf "%b\n" "${RED}Failed to change directory to slstatus${RC}"; return 1; }
        if sudo make clean install; then
            printf "%b\n" "${GREEN}slstatus installed successfully${RC}"
        else
            printf "%b\n" "${RED}Failed to install slstatus${RC}"
            return 1
        fi
    else
        printf "%b\n" "${GREEN}Skipping slstatus installation${RC}"
    fi
    cd "$HOME"
}

DWM
install_nerd_font
picom_animations
picom_conf
clone_config_folders
configure_backgrounds
install_slstatus
