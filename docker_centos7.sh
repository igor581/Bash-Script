#!/bin/bash


#Description: Docker installation on CentOS7 

#AUthor: Serge K
#Date: sept 2019


### Uninstall old versions if exist on the system 


echo -e "\n Checking if your server is connected to the network...."

sleep 4

ping google.com -c 4 

if 
  [[ ${?} -ne 0 ]]
 then
 echo -e "\nPlease verify that your server is connected!!\n"
 exit 2
 fi

echo -e "\n Uninstalling Older version of Docker...."

sleep 4
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate  docker-logrotate docker-engine -y

## Install required packages

echo -e "\n Installing required packages...."

sleep 4

yum install -y yum-utils device-mapper-persistent-data lvm2

## Set up repository

echo -e "\n Setting up Docker repository...."

sleep 4

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum-config-manager --enable docker-ce-nightly

yum-config-manager --enable docker-ce-test

## Install Docker 

echo -e "\n Installing Docker...."

sleep 4

yum install docker-ce docker-ce-cli containerd.io -y 

##Start docker daemons

echo -e "\n Starting docker Daemon..."

sleep 4

systemctl start docker

systemctl enable docker

##Checking if installtion successful

echo -e "\n Checking if installation went well"

sleep 4

docker ps

  if 
    [[ ${?} -eq 0 ]]
  then
   echo -e "\n The installtion was successfull!!"
   echo "you can now start using Docker..."
  else
  echo "please verify that the installation is done correctly or that the docker daemon is started."
  exhit 1
  fi
exit 0
 


