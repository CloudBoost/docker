#Change the Directory
if [[ $PWD/ = */docker/ubuntu16/ ]]; then
	cd ..
fi

#Install Docker
uname -r
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo touch /etc/apt/sources.list.d/docker.list
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee  /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get --assume-yes purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get update
sudo apt-get --assume-yes install linux-image-extra-$(uname -r)
sudo apt-get --assume-yes install docker-engine
sudo service docker start

#Install Docker Compose. 
sudo apt-get -y install python-pip
sudo pip install docker-compose

#Run Docker compose. 
sudo docker-compose up



