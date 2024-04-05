#!/bin/bash

if [ -x /usr/sbin/shutdown ]; then
    /usr/sbin/shutdown -r +10 "Rebooting to install patches, back up soon..."
elif [ -x /sbin/shutdown ]; then
    /sbin/shutdown -r +10 "Rebooting to install patches, back up soon..."
else
    # shouldn't happen?
    /bin/systemctl reboot
fi
