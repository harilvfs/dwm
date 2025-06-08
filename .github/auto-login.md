##  Enable TTY Auto-Login

Create override config:

```bash
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo vim /etc/systemd/system/getty@tty1.service.d/autologin.conf
```

Add the following:  

```bash
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin your_username --noclear %I 38400 linux
```

Replace `your_username`. Then reload:

```bash
sudo systemctl daemon-reexec
```

> Auto-login skips the password — only use on trusted machines.

### (Optional) Add Screen Lock

Install `slock`:

```bash
sudo pacman -S slock
```

To lock after 5 minutes, add to `.xinitrc` **before** `exec dwm`:

```bash
xautolock -time 5 -locker slock &
```

> Manually lock with this command or if you already have install my dwm then press `mod+u` [ mod refers to window key ( eww window ) ] :
> ```bash
> slock
> ```

### Remove Auto-Login (If Needed)

Delete config:

```bash
sudo rm -rf /etc/systemd/system/getty@tty1.service.d
```

Then reload systemd:  

```bash
sudo systemctl daemon-reexec
```

### Reboot & Test

Restart your system to apply changes:  

```
sudo reboot
```

