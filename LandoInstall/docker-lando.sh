#!/bin/bash
# -*- ENCODING: UTF-8 -*-

   sudo apt-get update
   sudo apt-get install -y git wget curl dpkg 
   sudo apt-get purge docker docker-engine docker.io lando

   wget https://get.docker.com 
   mv index.html dockerInstall.sh
   sudo chmod +x dockerInstall.sh  
   ./dockerInstall.sh 

   wget http://installer.kalabox.io/lando-latest-dev.deb
   sudo dpkg -i lando-latest-dev.deb

   sudo usermod -aG docker $USER
   rm lando-latest-dev.deb
   rm dockerInstall.sh

   lando init

exit

