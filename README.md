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


## Create an app

Once started, you'll see the CloudBoost Secure Key on the console. This is important, Please save it for future use.
Secure Key helps you create / delete apps. 

CloudBoost Dahsboard will be on port 1440. API will be on port 80.

To create an app with the API, You need to  : 

```
        POST <YOUR_SERVER_URL>/app/<APP ID>
        BODY {
            secureKey : YOUR_SECURE_KEY
        }
```

To delete an app with the API, You need to  : 

```
        DELETE <YOUR_SERVER_URL>/app/<APP ID>
        BODY {
            secureKey : YOUR_SECURE_KEY
        }
```

Once your app is ready, You can then get the latest SDK from  https://tutorials.cloudboost.io. Remember to save the SDK in your project. and You can then init your app by :

`CB.CloudApp.init('Your Server URL', 'Your App ID', 'Your App Key');`

You can then follow rest of the documentation from https://tutorials.cloudboost.io

## CloudBoost Architecture

CloudBoost runs on MongoDB, ElasticSearch and Redis. You're responsible for managing the uptime, backups of your data in each of these databases. If you want a managed solution, Please check out CloudBoost.io

## Contribute

Pull requests are very welcome!

We'd love to hear your feedback and suggestions in the issue tracker. 



