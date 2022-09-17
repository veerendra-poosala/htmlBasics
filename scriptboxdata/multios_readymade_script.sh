#!/bin/bash
#PACKAGES=httpd wget unzip
#getting webpage link from web
LINK=
WF_NAME=''
#creating webfiles directory on TMP folder
TMP="/tmp/webfiles"

yum --help &> /dev/null
#checking current ami is cent os machine or ubuntu machine by unsing above command exit code if the code=0 it is centos else ubuntu.
if [ $? -eq 0 ]
then
	SVC="httpd"
	PACKAGES="wget httpd unzip"
	sudo update yum
	sudo yum install $PACKAGES -y
	
	systemctl start httpd
	
	mkdir -p $TMP
	cd $TMP
	wget $LINK > /dev/null
	unzip $WF_NAME
	cp -r $WF_NAME/* /var/www/html/
	
	systemctl restart httpd
	
	rm -rf $TMP
else
	SVC="apache2"
	PACKAGES="wget apache2 unzip"
	sudo update apt
	sudo apt install $PACKAGES -y
	
	systemctl start apache2
	
	mkdir -p $TMP
	cd $TMP
	wget $LINK > /dev/null
	unzip $WF_NAME.zip > /dev/null
	cp -r $WF_NAME/* /var/www/html/
	
	systemctl restart apache2
	
	rm -rf $TMP
fi	
