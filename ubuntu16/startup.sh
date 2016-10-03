#!/bin/sh -

#Functions
command_exists () {
    type "$1" &> /dev/null ;
}

sudo rm -rf CloudBoost
sudo mkdir CloudBoost
cd CloudBoost

#Remove docker contains if it exists.
#if which docker >/dev/null; then
    #Stop all containers
#    sudo docker stop $(sudo docker ps -a -q)
    #Remove all containers
#    sudo docker rm $(sudo docker ps -a -q)
    # Delete all images
#    sudo docker rmi $(sudo docker images -q)
#fi

#Install Git
sudo apt-get update
if command_exists git ; then
  echo "Git exists" 
else
  sudo apt-get -y install git
fi

#Clone Repo
git clone https://github.com/CloudBoost/docker.git
cd docker

#Run the script. 
cd ubuntu16
sudo bash install.sh
