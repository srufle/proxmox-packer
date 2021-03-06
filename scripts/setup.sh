#!/bin/bash -eux

# Add sandbox user to sudoers.
echo "sandbox        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
# sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic
exit 0