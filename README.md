# CloudBoost on Docker

CloudBoost is the Complete NoSQL Database Service for your app. **Think of CloudBoost as Parse + Firebase + Algolia + Iron.io all combined into one** :
 - Data-Storage / JSON Storage / BLOB Storage
 - 100% data ownership
 - Realtime 
 - Search
 - Cache
 - Queues
 - More - ACL's, User Authentication, Server-less apps and more. 
 

## Deploy CloudBoost with Docker.

 
CloudBoost can be deployed to any cloud with [Docker Compose]
 
- AWS
- Azure
- SoftLayer
- Digital Ocean 
- Packet
- Your private cloud.


### Before you begin: Have these installed.

You need to install these on your machine before you install CloudBoost. 
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Docker](https://docs.docker.com/engine/installation/)
- [Docker Compose](https://docs.docker.com/compose/install/) 

### Step 1: Clone this repository.

Clone this repo on your machine. 

```
git clone https://github.com/CloudBoost/docker.git
cd docker
```

### Step 2: Edit compose file (optional)

We've left placeholders for you to fill in `docker-compose.yml` file. If you leave this step most of CloudBoost will still work but few services like Email will not. 

### Step 3: Run with Docker Compose

Docker Compose file is a collection of services like MongoDB, Redis, CloudBoost Engine, Dashboard and more which is essential to run the CloudBoost Service.

To install CloudBoost, you can : 

```
sudo docker-compose up
```

Your CloudBoost Service is now up and running! Go to http://server-ip:1447 or http://localhost:1447 launch it in the browser. If you don't see anything coming up in your browser, make sure you've unblocked the port on your firewall.


## Create your first app

**CloudBoost Portal / Dashboard** is running on **Port 1440** on the Public IP of the machine you've an docker-compose on. 
**API** is running on **Port 4730** on the Public IP.
**User Service** is running on **Port 3000** on the Public IP.
**Accounts** is running on **Port 1447** on the Public IP.

You can go CloudBoost Portal (on port 80) and create your first app. **If you're using the SDK, you can talk to the app you've just created by using the API port (4730)**

`CB.CloudApp.init('http://Your_Server_IP:4730', 'Your App ID', 'Your App Key');`

You can then follow rest of the documentation from https://tutorials.cloudboost.io

## CloudBoost Architecture

CloudBoost runs on MongoDB, and Redis. You're responsible for managing the uptime, backups of your data in each of these databases. If you want a managed solution, Please check out CloudBoost.io

## Contribute

Pull requests are very welcome!

We'd love to hear your feedback and suggestions in the issue tracker. 



