#!/bin/bash
# -*- ENCODING: UTF-8 -*-
   
   sudo apt-get update
   sudo apt-get install -y git wget curl dpkg 
   git clone https://github.com/docker/docker-install.git docker
   ./docker/install.sh 
   sudo systemctl status docker
   wget http://installer.kalabox.io/lando-latest-dev.deb
   sudo dpkg -i lando-latest-dev.deb

exit
