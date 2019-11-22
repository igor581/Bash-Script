#!/bin/bash

## this script will find a particular string or digit in iptables file

port=`cat /etc/sysconfig/iptables |grep $1`

if [[ $port -eq 0 ]] 2> /dev/null
then
    echo "Not able to find"
else
    echo "able to find"   
 fi  
