#!/bin/bash

# Install git, ansible
echo "> Installing default packages"
apt install git ansible -y

# Set "debian" as a Sudoers
export USR="debian"
echo "> Adding $USR to sudoers"
/usr/sbin/usermod -aG sudo $USR

sudo -u $USR bash

# Clone repo
echo "> Clonning dotfiles repo"
cd /home/$USR
git clone https://github.com/F9mc/dotfiles.git
cd dotfiles

# Run playbook
echo "> Starging playbook"
ansible-playbook -k bootstrap.yml