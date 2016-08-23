#!/bin/sh -
sudo mkdir CloudBoost
cd CloudBoost

#Install Git
sudo apt-get update
sudo apt-get -y install git

#Clone Repo
git clone https://github.com/CloudBoost/docker.git
cd docker

#Run the script. 
sudo bash install.sh
