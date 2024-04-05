#!/bin/bash

# Add a sudo-all, no password ansible user and copy the public key.
groupadd sudo 2>/dev/null
mkdir -p /etc/sudoers.d   
echo '%sudo ALL=(ALL:ALL) NOPASSWD:ALL' >/etc/sudoers.d/sudo-np
chmod 440 /etc/sudoers.d/sudo-np
useradd --uid 62147 --password '!' --comment "Ansible user account" --home-dir /home/annecybil --create-home --user-group --groups sudo --shell /bin/sh annecybil
mkdir /home/annecybil/.ssh
chown annecybil.annecybil /home/annecybil/.ssh
chmod 700 /home/annecybil/.ssh
cat<<EOF >/home/annecybil/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDnPT+Shr9Crlumkw8hkBmZ6Hp6Di5Z4pfYK9jkeOVraBPo3Yi9+4U1vztoyO4VYAZoxJfhTq652zUGFuyn5b+JVzaeh5Q3gJOdB3FPH0yvZ+zlJ7wwX2hJooGcTHqK4rdiMzaRYheVJCtkCQQ2dJrqaNvaadkhr2Mx0pSl0F1vnYNlT4Ath4oKwlNsVjWCOTqOE+0maCe+KATuJzfcRe2WHHmj1PP07i6NHuFx0u0OCx23IahX2QzM05IddRa1sRssmkQe3iFcLTFicQpPpGVbOeTq4dZrcDjT67AIkLS217QzrqkWqoQB6Y11vVI8ocqnLD8v572NbYNkVbW/DMlf annecybil@krebstar
EOF
chown annecybil.annecybil /home/annecybil/.ssh/authorized_keys
chmod 400 /home/annecybil/.ssh/authorized_keys
