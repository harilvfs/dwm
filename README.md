<p align="center">
  <img src="https://github.com/harilvfs/assets/blob/main/dwm/Dwm.svg.png" alt="Terminal">
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

<strong>**Installation** </strong>

```bash
git clone https://github.com/harilvfs/dwm
cd dwm/
sudo make clean install
```

**Add this to your** `~/.xinitrc`

```
slstatus &
exec dwm
```

<br>

> [!IMPORTANT]
> After installation, remember to adjust some keybindings in `config.h` to fit your use case.

<br>

> [!NOTE]
> Default keybinding for terminal is `mod + x` and for rofi is `mod + r`.

### Picom

For transparency settings, check out this ➤ [Picom Config](https://raw.githubusercontent.com/harilvfs/i3wmdotfiles/main/picom/picom.conf).

For the inbuild animation of picom, check out this ➤ [FT-LABS](https://github.com/FT-Labs/picom)

## Installation with Animations

To use the inbuilt animations provided by FT-Labs `picom`, follow the steps below:

```bash
git clone https://github.com/FT-Labs/picom.git ~/build/picom
cd ~/build/picom
meson setup --buildtype=release build
sudo ninja -C build install
```
### Dependencies

Assuming you already have all the usual building tools installed (e.g. gcc, python, meson, ninja, etc.)
