#!/bin/bash

SNAPSHOT_DIR="/timeshift/snapshots"

LATEST_SNAPSHOT=$(ls -1t "$SNAPSHOT_DIR" | head -n 1)

if [ -z "$LATEST_SNAPSHOT" ]; then
    echo "No Timeshift snapshots found!"
    exit 1
fi

BOOT_PATH="$SNAPSHOT_DIR/$LATEST_SNAPSHOT/localhost/boot"

if [ ! -f "$BOOT_PATH/vmlinuz-linux" ] || [ ! -f "$BOOT_PATH/initramfs-linux.img" ]; then
    echo "Kernel or initramfs missing in the snapshot!"
    exit 1
fi

GRUB_CUSTOM="/etc/grub.d/40_custom"

cat <<EOF > "$GRUB_CUSTOM"
menuentry "Timeshift Recovery (Latest: $LATEST_SNAPSHOT)" {
    set root=(hd0,3)
    linux $BOOT_PATH/vmlinuz-linux root=/dev/sda3 rw
    initrd $BOOT_PATH/initramfs-linux.img
}
EOF

grub-mkconfig -o /boot/grub/grub.cfg

echo "Updated GRUB with latest Timeshift snapshot: $LATEST_SNAPSHOT"

