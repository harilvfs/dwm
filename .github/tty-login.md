## TTY Login Setup for DWM (No SDDM)

### Remove SDDM

```bash
sudo systemctl disable sddm
sudo systemctl stop sddm
sudo pacman -Rns sddm
```

### Set Up `.xinitrc`

Create or edit `~/.xinitrc`:  

```bash
vim ~/.xinitrc
```

Add this:  

```sh
#!/bin/sh
exec dwm
```

Then, **make it executable**:  

```bash
chmod +x ~/.xinitrc
```

### Start DWM Manually  

After logging into TTY: 

```bash
startx
```

If it fails:

```bash
cat ~/.local/share/xorg/Xorg.0.log | grep "(EE)"
```

*or if you want auto start dwm on tty then:*

### Auto-Start `dwm` on Login [ optional ]

Edit `~/.bashrc` (or `~/.zshrc` for Zsh):

```bash
vim ~/.bashrc
```

Add this at the bottom:  

```bash
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
```


