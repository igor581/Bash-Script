#!/usr/bin/env bash

# root privilege if the user is not root
echo "Please enter you password if your are not a root user."

if [ "$(whoami)" != "root" ]
then
    sudo -s "$0"
    exit
fi


function Update_Centos() {
  yum update -y
}


function centos_7_kernel_upgrade() {
  # All the Upgrade packages
  rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
  rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
  yum -y --enablerepo=elrepo-kernel install kernel-lt
  yum -y --enablerepo=elrepo-kernel install kernel-ml
}


function Google_installation() {
  # google packages
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
  yum -y install ./google-chrome-stable_current_*.rpm

  # To remove google chrome setup
  rm -rf "google-chrome-stable_current_x86_64.rpm"
  echo "Installation of Google chrome Copmpleted"
}


function VLC_installation() {
  # VLC packages
  yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
  yum -y install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
  yum -y install vlc
  echo "Installation of VLC Copmpleted"
}


function atom_installation() {
  echo "installing git."
  yum install wget git -y
  echo "Downloading atom packages from https://atom.io/"
  wget https://github.com/atom/atom/releases/download/v1.18.0/atom.x86_64.rpm # to download atom
  echo "Installing atom package"
  yum localinstall atom.x86_64.rpm -y # to install atom

  # atom will setup will be safe in the same directory with the script
  rm -rf "atom.x86_64.rpm" # to remove atom from home directory

  echo "Type Atom in your terminal to launch the Text Editor or go to application- programming and launch atom"
  echo "Enjoy Atom!"
}


function Shutdown() {
  cho "Upgrade Copmpleted."
  echo "Server will restart in 1 minutes. Please save your work."

  # To reboot the Server
  shutdown -r +1
}


#calling the functions

Update_Centos  # to update all applications
centos_7_kernel_upgrade
VLC_installation
atom_installation
Google_installation
Shutdown # this will be the last function to run when everything is Copmpleted
exit 0
