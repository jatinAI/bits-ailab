#!/bin/bash


#Updating system
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install sudo -y

#Installing Gitlab Dependencies
sudo apt install curl openssh-server ca-certificates postfix -y
#Selecting Internet Site
#And then enter the server domain name 

#Add GitLab repository with the curl command.
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash

#Installing the GitLab CE Community Edition
sudo apt install gitlab-ce -y

#To change the gitlab url
sudo nano /etc/gitlab/gitlab.rb
#Now change the "external url" with the domain name of yours
#Save and Exit the file


#we will generate a new Letsencrypt certificate and DHPARAM certificate for the GitLab domain name 'gitlabs-livesmart-GitLab'.

#letsencrypt tool installation
sudo apt install letsencrypt -y
sudo letsencrypt certonly --standalone --agree-tos --no-eff-email --agree-tos --email tensaitux993@gmail.com -d git.hakase-labs.pw
