#!/bin/bash

# Uses root user
su

# Install git, ansible
apt isntall git ansible -y

# Set "debian" as a Sudoers
export USERNAME="debian"
usermod -aG sudo $USERNAME

su -l $USERNAME

# Clone repo
cd /home/$USERNAME
git clone https://github.com/F9mc/dotfiles.git
cd dotfiles

# Run playbook
ansible-playbook -k bootstrap.yml