#!/bin/bash

#author: Tia M
# Date: October 25 , 2019
# Modified on:             by:

printf 'Which Linux distribution do you know? '
read DISTR

case $DISTR in
     ubuntu)
          echo "I know it! It is an operating system based on Debian."
          ;;
     centos|Contos|rhel|RHEL)
          echo "Hey! It is my favorite Server OS!"
          ;;
     windows)
          echo "Very funny..."
          ;; 
     *)
          echo "Hmm, seems i've never used it."
          ;;
esac

