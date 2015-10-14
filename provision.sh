#!/bin/bash

apt-get -y update

dpkg -s npm &> /dev/null || {
#Install npm and nodejs IF npm is not installed
apt-get -y install nodejs npm
#creating node symbolic link
ln -s /usr/bin/nodejs /usr/bin/node 
}

command -v hubot &> /dev/null || {
npm install -g hubot coffee-script
}
