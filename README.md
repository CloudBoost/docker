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

**Important:** Open Source CloudBoost only contains the API. If you're looking for dashboard and the UI, we recommend using the managed service [here](https://www.cloudboost.io). We also have an enterprise offering for enterprises where we have CloudBoost installed on your servers. Please [reach out to us here](https://cloudboostio.typeform.com/to/Y4JOQD) if you're interested. 

CloudBoost can be deployed to any cloud with [Docker Compose]
 
- AWS
- Azure
- SoftLayer
- Digital Ocean 
- Packet
- Your private cloud.


### Before you begin

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

Docker Compose file is a collection of services like MongoDB, Redis, CloudBoost Engine which is essential to run the CloudBoost Service.

To install CloudBoost, you can : 

```
sudo docker-compose up
```

Your CloudBoost Service is now up and running! 



## Once the server is running, You can

Once started, you'll see the CloudBoost Secure Key on the console. This is important, Please save it for future use.
Secure Key helps you create / delete apps.

### Create an app

To create an app, You need to  :

```
        REQUEST TYPE : POST
        URL : <YOUR_SERVER_URL>/app/<APP ID>
        REQUEST BODY :
        {
            secureKey : YOUR_SECURE_KEY
        }
```

For Example (in curl)  :

```
curl -H "Content-Type: application/json" -X POST -d '{"secureKey":"xxxxxx-yyyy-xxxx-yyyyy-xxx"}' http://localhost:4730/app/app1

```

### Creating a table

Table lets you store any structured data in your app. To create one, [check this documentation out](https://tutorials.cloudboost.io/en/schema/cloudtables).

### Delete an app

To delete an app, You need to  :

```
        REQUEST TYPE : DELETE
        URL : <YOUR_SERVER_URL>/app/<APP ID>
        REQUEST BODY :
        {
            secureKey : YOUR_SECURE_KEY
        }
```

For Example (in curl) :

```
        curl -H "Content-Type: application/json" -X DELETE -d '{"secureKey":"xxxxxx-yyyy-xxxx-yyyyy-xxx"}' http://localhost:4730/app/app1

```

Once your app is ready, You can then get the latest SDK from  https://tutorials.cloudboost.io. Remember to save the SDK in your project. and You can then init your app by :

`CB.CloudApp.init('Your Server URL', 'Your App ID', 'Your App Key');`

You can then follow rest of the documentation from https://tutorials.cloudboost.io. You can also check out API Reference on https://docs.cloudboost.io

## Cluster Maintenance, Scale, and Updates

CloudBoost runs on MongoDB and Redis. You're responsible for managing the [uptime](https://en.wikipedia.org/wiki/Uptime), [replication](https://en.wikipedia.org/wiki/Replication_(computing)), [sharding](https://en.wikipedia.org/wiki/Shard_(database_architecture)), [backups](https://en.wikipedia.org/wiki/Backup) of your data in each of these databases. 

You also need to update CloudBoost with every [new release](https://github.com/cloudboost/cloudboost/releases) and you need to [configure your server to auto-scale it](https://www.brianchristner.io/how-to-scale-a-docker-container-with-docker-compose/). If you're using Docker, the image is released at the `latest` tag and you need to check for new releases atleast once a month. 

[Using our hosted and managed service](https://www.cloudboost.io) helps you to save time, development costs, and eliminates managing your own cluster of servers which is cheaper long-term. We recommend using the hosted service if you're running production apps. 

## App Settings
To read more about app settings, check [Click here](https://github.com/CloudBoost/cloudboost/tree/master/docs/app-settings)

# Support

- Report bugs and feature requests on [GitHub issue tracker](https://github.com/CloudBoost/cloudboost/issues). 
- You can reach out to us on [Slack](https://slack.cloudboost.io). All of our engineers hangout here. 
- [StackOverflow](stackoverflow.com/questions/tagged/cloudboost) : Tag your questions with `cloudboost` tag, so that we're notified.
- Email: [support@cloudboost.io](support@cloudboost.io)
- Twitter: [@cloudboostio](https://twitter.com/cloudboostio)

# Contributing

[Pull requests](https://help.github.com/articles/about-pull-requests/) are very welcome!

We'd love to hear your feedback and suggestions in the [issue tracker](https://github.com/CloudBoost/cloudboost/issues).



