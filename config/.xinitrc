#!/bin/sh

pgrep dunst > /dev/null || /usr/bin/dunst &

xautolock \
  -time 10 \
  -locker slock \
  -notify 10 \
  -notifier "/usr/bin/notify-send '🔒 Locking soon' 'The screen will lock in 10 seconds...'" &

exec dwm
