#!/bin/bash

# Description: LAMP STACK and WORDPRESS setup for web hosting in centos/redhat6.5
# Author: Tia M
# Date: November 1, 2019
# Modified on:             by:

function update(){
echo "Updating the system,please wait"
sleep 5
yum -y update
}

function apache(){
echo "Installing apache packages,please wait"
sleep 5
yum install httpd -y

# add the iptables rule for port 80 TCP
sed -i '/22/a\-A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT' /etc/sysconfig/iptables

# start the apache daemonstart the apache daemon
service httpd start

#start the firewall
service iptables restart

# make the apache deamon permanent
chkconfig httpd on

# check if the new port 80 is opened
sleep 5 
echo "Checking all the open ports on this server"
iptables -nL
}


function mysql(){
echo "Installing MySQL packages,please wait"
sleep 5
yum install mysql-server -y

# start mysql services
service mysqld start

# make mysql deamon permanent
chkconfig mysqld on
}

function sed_root_password(){
echo
echo "It is the set MySQL root password, please follow the steps and use '12345' as default root password.............."
sleep 10
mysql_secure_installation
}

function mysql_conf(){
mysql -uroot -p'12345' mysql<<EOFMYSQL
create database webserver;
create user oracle@localhost identified by 'school1';
grant all privileges on webserver.* to oracle@localhost identified by 'school1';
flush privileges;
exit
EOFMYSQL
}


function php(){
echo "Installing PHP packages,please wait"
sleep 5
yum install php php-mysql -y

# this will insert the code to test the PHP web
echo "<?php phpinfo(); ?>" >> /var/www/html/info.php

# restart apache services
service httpd restart

# install php-gd
yum -y install php-gd

# Wordpress installation
echo "Downloading the wordpress package,please wait"
sleep 5
cd /tmp
mkdir file
cd file
wget https://wordpress.org/wordpress-5.1.1.tar.gz

echo "Extracting the wordpress package,please wait"
tar -xzvf wordpress-5.1.1.tar.gz
cd 

# to copy everything in wordpress directory to /var/www/html
cp -r /tmp/file/wordpress/* /var/www/html

# make a directory call uploads in wp-content
mkdir /var/www/html/wp-content/uploads

# change the owner of all the file under /var/www/html/ to apache because the webserver will be running by apache and not root
chown -R apache:apache /var/www/html/*

cd /var/www/html
cp wp-config-sample.php wp-config.php
chown -R apache:apache /var/www/html/*

# setup the mysql connection with the webserver database and the user oracle
sed -i "s/database_name_here/webserver/" /var/www/html/wp-config.php
sed -i "s/username_here/oracle/" /var/www/html/wp-config.php
sed -i "s/password_here/school1/" /var/www/html/wp-config.php

service httpd restart.

}

#update
apache
mysql
sed_root_password
mysql_conf
php
