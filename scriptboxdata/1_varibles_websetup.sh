#!/bin/bash

echo "Creating websetup"
DEPENDENCIES="wget httpd unzip"
SVN="httpd"
URL="https://www.tooplate.com/zip-templates/2119_gymso_fitness.zip"
FNAME="2119_gymso_fitness"
TEMPFILES="/tmp/webfiles/"
echo "Installing Dependencies"
sudo yum install $DEPENDENCIES -y
echo "Starting httpd service"
systemctl start $SVN
systemctl enable $SVN
echo "getting url from web"
wget $URL > /dev/null
echo "changing directory to tmp/webfiles"

cd $TEMPFILES
echo
echo "unzipiing"
unzip -o $FNAME.zip > /dev/null
echo
echo "copying webfiles to var/www/html/"
cp -rf $FNAME/* /var/www/html/
systemctl restart $SVN

rm -rf /tmp/webfiles/*

