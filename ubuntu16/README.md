#Steps to install CloudBoost on Ubuntu 16

- Change to Systemd directory `cd /etc/systemd/system`
- Download cloudboost.service file `wget https://raw.githubusercontent.com/CloudBoost/docker/master/ubuntu16/cloudboost.service`
- Change permission of cloudboost.service file `chmod 664 cloudboost.service`
- Change to user directory `/usr/local/bin`
- Download the startup script `wget https://raw.githubusercontent.com/CloudBoost/docker/master/ubuntu16/startup.sh`
- Change permissions `chmod +x startup.sh`
- Refresh systemctl daemon `sudo systemctl daemon-reload`
- Start the cloudboost.service `sudo systemctl start cloudboost`
- Enable Service at Bootup `sudo systemctl enable cloudboost`
