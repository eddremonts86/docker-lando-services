#!/bin/bash
# -*- ENCODING: UTF-8 -*-

mkdir app
cd app
mkdir $1

cp ../phytonLando.yml ./$1/.lando.yml
cp ../server.py ./$1/
cd $1 
echo "---------------------------------"
echo "Making new project $1"
  echo "Starting Lando"    
echo "---------------------------------"
     lando start
 echo "---------------------------------"
 echo "Relevant Info"
 echo "---------------------------------"
      lando info 