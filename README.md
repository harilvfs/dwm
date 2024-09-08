<p align="center"> <strong>DWM</strong>  </p>

![Terminal](https://github.com/aayushx402/images/blob/main/dwm/2024-08-24_00-24.png)

This is a DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus). I’ve tweaked and configured the patches to suit my personal workflow, but it’s simple enough for anyone to use.

## Dependencies
**Debian/Ubuntu-based:**
```bash
sudo apt install build-essential git libx11-dev libx11-xcb-dev libxcb-res0-dev libxinerama-dev libxft-dev libimlib2-dev
```

**Arch Linux:**
```bash
sudo pacman -S --needed base-devel extra/git extra/libx11 extra/libxcb extra/libxinerama extra/libxft extra/imlib2
```

## Dependencies

<details>
  <summary>🟢 Arch Linux</summary>

To install the required packages, run:

```bash
sudo pacman -S --needed base-devel git libx11 libxcb libxinerama libxft imlib2
```

</details> <details> <summary>🔵 Debian/Ubuntu-based</summary>
To install the required packages, run:

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

Add this to your `~/.xinitrc`

```
slstatus &
exec dwm
```

> [!IMPORTANT]
> After installation, remember to adjust some keybindings to fit your use case.

> [!NOTE]
> Default keybinding for terminal is `mod + x` and for rofi is `mod + r`.

## Desktop
![Desktop](https://github.com/aayushx402/images/blob/main/dwm/2024-08-23_22-08_1.png)

## Transparency

For transparency settings, check out this ➤ [Picom config](https://github.com/aayushx402/i3-CatDotfiles/blob/main/picom/picom.conf).

