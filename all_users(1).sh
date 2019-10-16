#! /bin/bash

#This script will pull all the users from /etc/passwd and display the output.

sed -n '/tcpdump/, /print still the end/p' /etc/passwd | awk -F":" '{print$1}' | sed '/tcpdump/d'| sort -u | less -NM > ~/users.txt

cd ~

sed -i '1i This is the all the usernames on this server.' users.txt

cat users.txt | less -NM

rm -f users.txt

exit 0
