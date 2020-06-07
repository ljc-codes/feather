# 🦜 Toucan 


Toucan is: 

**Google Cloud Platform + Firebase +  Guvicorn +  Mongo Atlas + Graphql + Vue + Apollo**

starter code. 

## What is it?

**toucan** is a lightweight starter code for developing modern apps. 
It consists of two services: 

1) client - GCP Cloud Build + Firebase Hosting + Vue + Apollo
2) server - GCP Cloud Run + Guvicorn + MongoDB Atlas + Graphql 

## Config

All service config is done within, toucan/config. 

1) Toucan features GCP cloud build / cloud run yaml files for CICD. 
   Project configuration can be found in 'server.cloudbuild.yaml' file. 
   IAM configuration and repo triggers are then required.  

2) Toucan.yaml - General configuration for services and apis. For example,
   the uri for your Mongo Atlas Cluster. 
   
## Running Toucan
Current support is limited to OSX

```sh
# Installs required libraries and runs server and client locally. 
./fly_local.sh
```

Other useful scripts are found in toucan/scripts/
