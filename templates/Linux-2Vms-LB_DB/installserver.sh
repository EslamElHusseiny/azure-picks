#!/bin/bash
# install apache service 
yum -y update
yum -y install httpd php php-mysql 
setsebool -P httpd_can_network_connect=1 
service httpd start
chkconfig httpd on