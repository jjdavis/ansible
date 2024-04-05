#!/bin/bash

# Dump list of installed packages

if test -f /etc/lsb-release || test -f /etc/debian_version
   then
       /usr/bin/dpkg --get-selections >/etc/installed-pkgs.txt
fi

# Any snaps?

if test -x /usr/bin/snap
then
    /usr/bin/snap list > /etc/installed-snaps.txt
fi

exit 0
