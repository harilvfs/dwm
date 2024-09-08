<p align="center">
  <img src="https://github.com/aayushx402/images/blob/main/dwm/Dwm.svg.png" alt="Terminal">
</p>

<strong>**This is a DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus). I’ve tweaked and configured the patches to suit my personal workflow, but it’s simple enough for anyone to use.** </strong>

## Preview

<details>
  <summary>Desktop</summary>
  
![Terminal](https://github.com/aayushx402/images/blob/main/dwm/2024-08-24_00-24.png)

</details>

<br>

**Dependencies**

<details>
  <summary>Arch Linux</summary>

```bash
sudo pacman -S --needed base-devel git libx11 libxcb libxinerama libxft imlib2
```

</details> <details> <summary>Debian/Ubuntu-based</summary>

```bash
sudo apt install build-essential git libx11-dev libx11-xcb-dev libxcb-res0-dev libxinerama-dev libxft-dev libimlib2-dev
```
</details>

## Installation

```bash
git clone https://github.com/aayushx402/dwm-ayx
cd dwm-ayx
sudo make clean install
```

**Add this to your** `~/.xinitrc`

```
slstatus &
exec dwm
```

> [!IMPORTANT]
> After installation, remember to adjust some keybindings in `config.h` to fit your use case.

> [!NOTE]
> Default keybinding for terminal is `mod + x` and for rofi is `mod + r`.

## Transparency

For transparency settings, check out this ➤ [Picom Config](https://raw.githubusercontent.com/aayushx402/i3-CatDotfiles/main/picom/picom.conf).

