# CloudBoost on Docker

CloudBoost is the Complete NoSQL Database Service for your app. **Think of CloudBoost as Parse + Firebase + Algolia + Iron.io all combined into one** :
 - Data-Storage / JSON Storage / BLOB Storage
 - 100% data ownership
 - Realtime 
 - Search
 - Cache
 - Queues
 - More - ACL's, User Authentication, Server-less apps and more. 
 

# Installation

###If you're on Ubuntu 16

```

$ wget https://raw.githubusercontent.com/CloudBoost/docker/master/ubuntu16/install.sh
$ sudo bash install.sh

```

### If you're using Docker-Compose. 
The easiest is to use our `docker-compose.yml`.

Make sure you have [docker-compose](http://docs.docker.com/compose/install/) installed 
If you are using pip, install it using:
```
pip install -U docker-compose
```
And then:

```
git clone https://github.com/CloudBoost/docker.git
cd docker
docker-compose up
```

You can now access your instance on the port 80 of the IP of your machine.


## Create your first app

**CloudBoost Portal / Dashboard** is running on **Port 80** on the Public IP of the machine you've an docker-compose on. 
**API** is running on **Port 4730** on the Public IP.
**User Service** is running on **Port 3000** on the Public IP.

You can go CloudBoost Portal (on port 80) and create your first app. **If you're using the SDK, you can talk to the app you've just created by using the API port (4730)*

`CB.CloudApp.init('http://Your_Server_IP:4730', 'Your App ID', 'Your App Key');`

You can then follow rest of the documentation from https://tutorials.cloudboost.io

## CloudBoost Architecture

CloudBoost runs on MongoDB, and Redis. You're responsible for managing the uptime, backups of your data in each of these databases. If you want a managed solution, Please check out CloudBoost.io

## Contribute

Pull requests are very welcome!

We'd love to hear your feedback and suggestions in the issue tracker. 



