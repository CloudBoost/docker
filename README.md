# CloudBoost on Docker

CloudBoost is the Complete NoSQL Database Service for your app. **Think of CloudBoost as Parse + Firebase + Algolia + Iron.io all combined into one** :
 - Data-Storage / JSON Storage / BLOB Storage
 - 100% data ownership
 - Realtime 
 - Search
 - Cache
 - Queues
 - More - ACL's, User Authentication, Server-less apps and more. 
 

#Deploy CloudBoost to any Cloud. 

**Note :** Docker Compose file (docker-compose.yml) is no longer supported by CloudBoost. You can use Docker Cloud file and install  CloudBoost via Docker Cloud (https://cloud.docker.com) instead. 
 
CloudBoost can be deployed to any cloud with [Docker Cloud](https://cloud.docker.com)
 
- AWS
- Azure
- SoftLayer
- Digital Ocean 
- Packet
- Your private cloud. 
 
###Step 1: Create a Docker Cloud account 

You can go here to create your new Docker Cloud account : https://cloud.docker.com. 

Docker Cloud is reponsible for automating CloudBoost deployment to any cloud you like. 

###Step 2: Create a Node Cluster

A Node is a machine in your Cloud. You can add as many nodes you like in your cluster. 

###Step 3: Create a stack

Stacks are a collection of services like MongoDB, Redis, CloudBoost API, Dashboard and more which is essential to run the CloudBoost service. 

You can download CloudBoost stack file here : https://github.com/CloudBoost/docker/blob/master/docker-cloud.yml

Your CloudBoost Service is now up and running! 

##Scale

Docker Cloud makes it easy for you to scale CloudBoost cluster. Check Docker Cloud documentation for more details. 


## Create your first app

**CloudBoost Portal / Dashboard** is running on **Port 80** on the Public IP of the machine you've an docker-compose on. 
**API** is running on **Port 4730** on the Public IP.
**User Service** is running on **Port 3000** on the Public IP.

You can go CloudBoost Portal (on port 80) and create your first app. **If you're using the SDK, you can talk to the app you've just created by using the API port (4730)**

`CB.CloudApp.init('http://Your_Server_IP:4730', 'Your App ID', 'Your App Key');`

You can then follow rest of the documentation from https://tutorials.cloudboost.io

## CloudBoost Architecture

CloudBoost runs on MongoDB, and Redis. You're responsible for managing the uptime, backups of your data in each of these databases. If you want a managed solution, Please check out CloudBoost.io

## Contribute

Pull requests are very welcome!

We'd love to hear your feedback and suggestions in the issue tracker. 



