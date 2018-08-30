#!/bin/bash
# -*- ENCODING: UTF-8 -*-

mkdir app
cd app
mkdir $1
cp ../drupal8lando.yml ./$1/.lando.yml
cd $1 
echo "---------------------------------"
  echo "Starting Lando"    
echo "---------------------------------"
     lando start

echo "---------------------------------"
echo "Making new project $1"  
echo "---------------------------------"
     lando composer create-project drupal/drupal web  
     cd web 

 echo "---------------------------------"
 echo "Cloning steve-modules"
 echo "---------------------------------"
      git clone git@bitbucket.org:rebelp/steve-modules.git modules/custom

 echo "---------------------------------"
 echo "Cloning steve-themes"
 echo "---------------------------------"
      git clone git@bitbucket.org:rebelp/steve-templates.git themes/custom

 echo "---------------------------------"
 echo "Relevant Info"
 echo "---------------------------------"
      lando rebuild -y
      lando  composer require drupal/console:~1.0 --prefer-dist --optimize-autoloader  
      lando  composer require guzzlehttp/guzzle-services    
      lando  composer require cocur/slugify                                              
      lando drupal site:install standard --langcode="en" --db-type="mysql"  --db-host="database" --db-name="drupal8$1" --db-user="drupal8" --db-pass="drupal8" --db-port="3306" --db-prefix="stevecms_" --site-name="Drupal8-Dev" --site-mail="admin@gmail.com" --account-name="admin" --account-mail="admin@gmail.com" --account-pass="admin" --force
      lando drush cr all
      lando info 

echo "ADDITIONAL Configuratios "
echo "https://docs.devwithlando.io/tutorials/drupal8.html#workflow-docs"
echo "https://docs.devwithlando.io/tutorials/drupal8.html#advanced-usage"
exit