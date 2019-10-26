#!/bin/bash

# author: Tia M
# Date: October 25 , 2019
# Modified on:             by:

echo -n "Enter the Linux distro name: "
read DISTRO

case $DISTRO in

  Ubuntu)
    echo -n "Yes, it is based on Debian."
    ;;

  "Linux Mint" | "Elementory OS")
    echo -n "Yes, it is based on Debian."
    ;;

  CentOS | Fedora | RHEL)
    echo -n "No, its not based on Debian"
    ;;

  *)
    echo -n "Can find distro information"
    ;;
esac

