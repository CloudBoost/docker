#Stop all containers
sudo docker stop $(sudo docker ps -a -q)
#Remove all containers
sudo docker rm $(sudo docker ps -a -q)
# Delete all images
sudo docker rmi $(sudo docker images -q)