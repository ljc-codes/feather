# 🦜 Toucan 
OSX (Darwin) compatible 
version BETA










## What is it?

**toucan** is starter code for developing modern apps. 

## Technology

**Google Cloud Platform + Firebase +  Guvicorn +  Mongo Atlas + Graphql + Vue + Apollo**

## Features
Out of the box, Toucan comes with several features including: 
   - Single Page Vue frontend
   - Uvicorn ASGI server hosting a graphql api backend
   - Easy to use yaml for specifying build configurations and exteral resources. 
   - MongoDB Atlas integration  
   - Prebuilt example models and backend interactions. 
   - Scripts to build and run services. 
   - GCP CIDC (if triggers and IAM is configured) 

## Services

Toucan consists of two services: 

1) **client** - GCP Cloud Build + Firebase Hosting + Vue + Apollo
2) **server** - GCP Cloud Run + Guvicorn + MongoDB Atlas + Graphql 

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
