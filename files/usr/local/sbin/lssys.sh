#!/bin/bash

PATH=/bin:/usr/bin:/usr/sbin

# Collect some system information

uname -a >/etc/lssys.txt
lshw -short -quiet >>/etc/lssys.txt
lspci >>/etc/lssys.txt
lscpu >>/etc/lssys.txt
lsblk >>/etc/lssys.txt

# Grab some hw raid info from megacli, if it's installed

if [ -x /usr/sbin/megacli ];
then
    /usr/sbin/megacli -LDinfo -Lall -a0 >>/etc/lssys.txt
    megacli -PDlist -a0 >>/etc/lssys.txt
fi

exit 0
