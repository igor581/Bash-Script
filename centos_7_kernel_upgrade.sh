#! /usr/bin/bash

# How to Upgrade the Kernel on CentOS 7

# root privilege if the user is not root, he will be prompt for password
if [ "$(whoami)" != "root" ]
then
    sudo -s "$0"
    exit
fi

# All the Upgrade packages
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
yum -y --enablerepo=elrepo-kernel install kernel-lt
yum -y --enablerepo=elrepo-kernel install kernel-ml

echo "Upgrade Copmpleted."
echo "Server will restart in 1 minutes. Please save your work."

# To reboot the Server
shutdown -r +1
