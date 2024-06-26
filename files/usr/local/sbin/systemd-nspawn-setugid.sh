#!/bin/bash

/usr/bin/systemd-nspawn --directory=/var/lib/machines/bookworm --read-only --as-pid2 --private-network --bind-ro=/:/mnt --console=pipe /bin/sh -c "/usr/bin/find /mnt -xdev -type f \( -perm -4000 -o -perm -2000 \) -print0 | /usr/bin/xargs -0 /usr/bin/sha256sum" >/var/log/setugid.$(/usr/bin/date '+%u').log 2>&1
