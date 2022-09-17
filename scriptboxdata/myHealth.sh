#!/bin/bash
#updating all the installed packages by using yum
sudo yum update
#installing dependencies
sudo yum install wget unzip httpd -y
#make directory  /tmp/webfiles
sudo -i
mkdir -p /tmp/webfiles
#cd to /tmp/webfiles
cd /tmp/webfiles
#get the source code link from tooplate.com
wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
#unzip the file
unzip -u 2098_health.zip > /dev/null
#move the source files to /var/www/html
mv -f 2098_health/* /var/www/html/
#start the httpd service
systemctl start httpd

