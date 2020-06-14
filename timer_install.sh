#!/bin/bash

if [ "$1" == "-remove" ]; then
    rm -r /var/lib/soc_timer
    rm /usr/bin/timer
    rm /usr/lib/systemd/system-sleep/soc_timer
    echo "timer removed"
    exit 0
fi

mkdir /var/lib/soc_timer
touch /var/lib/soc_timer/times.json
chown $SUDO_USER /var/lib/soc_timer
chown $SUDO_USER /var/lib/soc_timer/times.json
cp -n src/soc_timer /usr/lib/systemd/system-sleep/
cp -n src/timer /usr/bin/
/usr/bin/timer -reset
echo "timer installed"