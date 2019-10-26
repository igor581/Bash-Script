#!/bin/bash

# This script will perfrom system inventory on demand meaning based on specific
# user's request.

# This function will allow the user to select what system parameter they which to check
system_inventory1 () {

read -p "Please select the option correponding to the system parameter you wish to see: " choice

if [ $choice -eq 1 ]; then
echo -e "Printing system CPU info...\n "
sleep 3
cat /proc/cpuinfo

elif [ $choice -eq 2 ]; then
echo -e "Printing memory info...\n "
sleep 3
free -m

elif [ $choice -eq 3 ]; then
echo -e "Printing number of bits...\n "
sleep 3
getconf LONG_BIT

elif [ $choice -eq 4 ]; then
echo -e "Printing OS version...\n"
sleep 3
lsb_release -a

elif [ $choice -eq 5 ]; then
echo -e "\nHere are the processes currently running on the system. Press q to quit..."
sleep 3
ps -ef

elif [ $choice -eq 6 ]; then
echo -e "\nAll the mountpoints of the system are as follow..."
sleep 3
findmnt

elif [ $choice -eq 7 ]; then
echo -e "\nThe IP info of the current system are as follow..."
sleep 3
ifconfig

elif [ $choice -eq 8 ]; then
echo -e "\nThe Hostname of the current system is as follow..."
sleep 3
cat /etc/hostname

elif [ $choice -eq 9 ]; then
echo -e "\nThe system kernel version is..."
sleep 3
uname -r

elif [ $choice -eq 10 ]; then
echo -e "\nThe system is preparing to be updated. Please do not turn off your device..."
sleep 3
yum update -y

else echo -e "\nOooops!! You entered the wrong option. Please repeat\n"
sleep 2
system_inventory2
fi

  read -p "Do you wish to view anything else? (type y/n): " new

if [[ $new == "y" ]]; then
system_inventory2

elif [[ $new == "n" ]]; then
echo -e "\nThank you!\n"
exit
fi
return
}

##############################################################
# This second function is the exact copy of the first one. Its goal is
# force the user to make a selection among the list of option. if the user makes
# selection that is not on the list it would jump to the end and recall the function

system_inventory2 () {

read -p "Please select the option correponding to the system parameter you wish to see: " choice

if [ $choice -eq 1 ]; then
echo -e "Printing system CPU info...\n "
sleep 3
cat /proc/cpuinfo

elif [ $choice -eq 2 ]; then
echo -e "Printing memory info...\n "
sleep 3
free -m

elif [ $choice -eq 3 ]; then
echo -e "Printing number of bits...\n "
sleep 3
getconf LONG_BIT

elif [ $choice -eq 4 ]; then
echo -e "Printing OS version...\n"
sleep 3
lsb_release -a

elif [ $choice -eq 5 ]; then
echo -e "\nHere are the processes currently running on the system. Press q to quit..."
sleep 3
top

elif [ $choice -eq 6 ]; then
echo -e "\nAll the mountpoints of the system are as follow..."
sleep 3
findmnt

elif [ $choice -eq 7 ]; then
echo -e "\nThe IP info of the current system are as follow..."
sleep 3
ifconfig

elif [ $choice -eq 8 ]; then
echo -e "\nThe Hostname of the current system is as follow..."
sleep 3
cat /etc/hostname

elif [ $choice -eq 9 ]; then
echo -e "\nThe system kernel version is..."
sleep 3
uname -r

elif [ $choice -eq 10 ]; then
echo -e "\nThe system is preparing to be updated. Please do not turn off your device..."
sleep 3
yum update -y

else echo -e "\nOooops!! You entered the wrong option. Please repeat\n"
sleep 2
system_inventory1
fi

read -p "Do you wish to view anything else? (type y/n): " new

if [[ $new == "y" ]]; then
system_inventory1

elif [[ $new == "n" ]]; then
echo -e "\nThank you!\n"
exit
fi
return
}
################################################################################
###############################################################################
echo -e "\nWelcome to the system inventory script. This script allows you to invetory
your system info.\n"

sleep 3

if [ $UID -ne 0 ]; then
echo -e "Sorry! You need to be a Root user to run this Script! Please go get approval and come back\n"

else
echo -e "Please make your selection based on the following list. Press \n1 for CPU
2 for Memory \n3 for Bits \n4 for OS Version \n5 for number of processes running
6 for All mount points \n7 for IP info \n8 for Hostname \n9 for Kernel Version
10 for Updating the OS\n "

system_inventory1

fi
