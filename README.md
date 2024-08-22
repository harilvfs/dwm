<p align="center"> <strong>DWM</strong>  </p>

![Terminal](https://github.com/aayushx402/images/blob/main/dwm/2024-08-22_22-57.png)

This is a DWM patches from [Chris Titus Tech](https://github.com/ChrisTitusTech/dwm-titus). I’ve tweaked and configured the patches to suit my personal workflow, but it’s simple enough for anyone to use.

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

## Desktop
![Desktop](https://github.com/aayushx402/images/blob/main/dwm/2024-08-22_22-54.png)

## Transparency

For transparency settings, check out this [Picom config](https://github.com/aayushx402/i3-CatDotfiles/blob/main/picom/picom.conf).

