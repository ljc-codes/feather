# 🦜 Toucan 


Toucan is: 

**Google Cloud Platform + Guvicorn +  Mongo Atlas + Graphql + Vue + Apollo**

starter code. 

## What is it?

**toucan** is a lightweight starter code for developing modern apps. 
It consists of two services: 

1) client - Vue + Apollo Frontend 
2) server - GCP + Guvicorn + MongoAtlas + Graphql 

## Config

All service config is done within, toucan/config. 

1) Toucan features GCP cloud build / cloud run yaml files for CICD. 
   CICD configuration can be found in 'server.cloudbuild.yaml' file. 
   IAM configuration and repo triggers are then required.  

2) Toucan.yaml - General configuration for services and apis. For example,
   the uri for your Mongo Atlas Cluster. 
   
## Running Toucan
Current support is limited to OSX

```sh
# Installs required libraries and runs server and client locally. 
./fly_local.sh
```

TODO: docker_local.sh - creates images of services and runs in container.