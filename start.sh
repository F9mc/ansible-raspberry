#!/bin/bash

# Install git, ansible
echo "> Installing default packages"
apt install git ansible -y

# Set "debian" as a Sudoers
export USR="debian"
echo "> Adding $USR to sudoers"
/usr/sbin/usermod -aG sudo $USR

# Clone repo
echo "> Clonning dotfiles repo"
cd /home/$USR
sudo -u $USR "git clone https://github.com/F9mc/dotfiles.git"
cd dotfiles

# Run playbook
echo "> Starging playbook"
sudo -u $USR "ansible-playbook -k bootstrap.yml"