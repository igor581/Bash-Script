#!/bin/bash

# this script will create a new user

# Put the script nane, the first name and the last name of the user that you want to create
# For example: ./usercreation.sh jhon smith

useradd $1 2>/dev/null
usermod -c "$1 $2" $1 2>/dev/null
echo ""
echo "User $1 $2 was created successfully and bellow is the user $1 info in /etc/passwd"
echo ""
cat /etc/passwd |grep $1
echo ""
