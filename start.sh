#!/bin/bash

# Uses root user
su

# Install git, ansible
apt install git ansible -y

# Set "debian" as a Sudoers
export USERNAME="debian"
/use/sbin/usermod -aG sudo $USERNAME

su -l $USERNAME

# Clone repo
cd /home/$USERNAME
git clone https://github.com/F9mc/dotfiles.git
cd dotfiles

# Run playbook
ansible-playbook -k bootstrap.yml