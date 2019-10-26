#!/bin/bash

# author: Tia M
# Date: October 25 , 2019
# Modified on:             by:

 
read -p "Enter your choice [yes/no]:" choice

case $choice in
     Y|y|Yes|YES|yes)
          echo "Thank you"
          echo "Your type: Yes"
          ;;
     N|n|No|NO|no)
          echo "Ooops"
          echo "You type: No"
          ;;
     *)
          echo "Sorry, invalid input"
          ;;
esac
