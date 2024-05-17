#!/bin/bash

# Uses root user
echo "> Connect as root"
su -l root

# Install git, ansible
echo "> Installing default packages"
apt install git ansible -y

# Set "debian" as a Sudoers
export USERNAME="debian"
echo "> Adding $USERNAME to sudoers"
/usr/sbin/usermod -aG sudo $USERNAME

su -l $USERNAME

# Clone repo
echo "> Clonning dotfiles repo"
cd /home/$USERNAME
git clone https://github.com/F9mc/dotfiles.git
cd dotfiles

# Run playbook
echo "> Starging playbook"
ansible-playbook -k bootstrap.yml