#!/bin/bash
# -*- ENCODING: UTF-8 -*-

mkdir app
cd app
mkdir $1
cp ../drupal7lando.yml ./$1/.lando.yml
cd $1 
echo "---------------------------------"
  echo "Starting Lando"    
echo "---------------------------------"
     lando start

echo "---------------------------------"
echo "Making new project $1"  
echo "---------------------------------"
     lando composer create-project drupal/drupal7 web  
     cd web 
 echo "---------------------------------"
 echo "Relevant Info"
 echo "---------------------------------"
      lando info 

echo "ADDITIONAL Configuratios "
echo "https://docs.devwithlando.io/tutorials/drupal8.html#workflow-docs"
echo "https://docs.devwithlando.io/tutorials/drupal8.html#advanced-usage"
exit