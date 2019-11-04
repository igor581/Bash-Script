#!/bin/bash

function mysql_conf(){
mysql -uroot -p'12345' mysql<<EOFMYSQL
create database webserver;
create user oracle@localhost identified by 'school1';
grant all privileges on webserver.* to oracle@localhost identified by 'school1';
flush privileges;
exit
EOFMYSQL
}
 mysql_conf
