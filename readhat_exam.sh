#!/bin/bash

# 8. Create the users, group and group membership:
touch /tmp/userlist.txt
echo "Natasha" >> /tmp/userlist.txt
echo "harry" >> /tmp/userlist.txt
echo "Sarah" >> /tmp/userlist.txt
echo "Manalo" >> /tmp/userlist.txt

userlist=/tmp/userlist.txt
username=$(cat /tmp/userlist.txt | tr 'A-Z' 'a-z')
password=$username@redhat

for user in $username
do
useradd $user
echo $password | passwd --stdin $user
done
