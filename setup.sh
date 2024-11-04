install_arch() {
    sudo pacman -Syu --noconfirm
sudo pacman -S --needed libx11 libxft libxinerama libxrandr libxrender xorg xorg-xinit xorg-xsetroot xorg-xrdb xorg-xinput xclip dmenu picom feh dunst lxappearance gcc make ttf-hack ttf-fira-code ttf-font-awesome alsa-utils pulseaudio pulseaudio-alsa pavucontrol brightnessctl maim scrot fastfetch rofi kitty alacritty firefox nerd-fonts-complete pasystray network-manager-applet

}

echo "Installing packages using pacman"
install_arch

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
    mkdir -p ~/build
    if [ ! -d ~/build/picom ]; then
        git clone https://github.com/FT-Labs/picom.git ~/build/picom || {
            echo "Failed to clone the repository"
            return 1
        }
    fi

    cd ~/build/picom || { echo "Failed to change directory to picom"; return 1; }

    meson setup --buildtype=release build || {
        echo "Meson setup failed"
        return 1
    }

    ninja -C build || {
        echo "Ninja build failed"
        return 1
    }

    sudo ninja -C build install || {
        echo "Failed to install the built binary"
        return 1
    }

    echo "Picom animations installed successfully"
}

clone_config_folders() {
    [ ! -d ~/.config ] && mkdir -p ~/.config

    for dir in config/*/; do
        dir_name=$(basename "$dir")
        if [ -d "$dir" ]; then
            cp -r "$dir" ~/.config/
            echo "Cloned $dir_name to ~/.config/"
        else
            echo "Directory $dir_name does not exist, skipping"
        fi
    done
}

configure_backgrounds() {
    BG_DIR="$HOME/Downloads/backgrounds"

    if [ ! -d "~/Downloads" ]; then
        mkdir ~/Pictures
        echo "Pictures directory created in Home folder"
    fi

    if [ ! -d "$BG_DIR" ]; then
        https://github.com/harilvfs/wallpapers ~/Downloads || {
            echo "Failed to clone the repository"
            return 1
        }
        mv ~/Downloads/nord-background ~/Downloads/backgrounds
        echo "Downloaded desktop backgrounds to $BG_DIR"
    else
        echo "Path $BG_DIR exists, skipping download of backgrounds"
    fi
}

install_nerd_font
clone_config_folders
picom_animations
configure_backgrounds

echo "All dependencies installed successfully."
