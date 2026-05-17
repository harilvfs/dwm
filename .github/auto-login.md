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

### Remove Auto-Login (If Needed)

Delete config:

```bash
sudo rm -rf /etc/systemd/system/getty@tty1.service.d
```

Then reload systemd:  

```bash
sudo systemctl daemon-reexec
```

### Reboot

Restart your system to apply changes:  

```
sudo reboot
```

