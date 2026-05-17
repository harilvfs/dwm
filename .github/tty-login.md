## TTY Login Setup for DWM (No SDDM)

### Remove any Login Manager you have installed on your system:

#### Like for sddm:

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
