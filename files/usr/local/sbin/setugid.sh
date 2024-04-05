#!/bin/bash

/usr/bin/find / -xdev -type f \( -perm -4000 -o -perm -2000 \) -print0 | /usr/bin/xargs -0 /usr/bin/sha256sum >/var/log/setugid.log 2>&1
