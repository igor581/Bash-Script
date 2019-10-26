#!/bin/bash

# author: Tia M
# Date: October 25 , 2019
# Modified on:             by:
 

read -p "Enter your choice [yes/no]:" choice
 
case $choice in
     yes|y)
          echo "Thank you"
          echo "Your type: Yes"
          ;;
     no|n)
          echo "Ooops"
          echo "You type: No"
          ;;
     *)
          echo "Sorry, invalid input"
          ;;
esac
