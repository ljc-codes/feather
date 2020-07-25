# 🦜 Feather
- OSX (Darwin) compatible 
- version: BETA

## What is it?

**feather** is starter code for developing modern web apps. 

## Stack

**Google Cloud Platform + Firebase +  Guvicorn +  Mongo Atlas + Graphql + Vue + Apollo**

## Features
Out of the box, Feather comes with several features including: 
   - Singlepage Vue frontend
   - Uvicorn ASGI server hosting backend a graphql api 
   - Easy to use yaml for specifying build configurations and external resources. 
   - MongoDB Atlas integration  
   - Prebuilt example models and backend interactions. 
   - Scripts to build and run services. 
   - GCP CIDC (if triggers and IAM are configured) 

## Running Feather
Current support is limited to OSX

```sh
# Installs required libraries. Runs server and client locally. 
./fly_local.sh
```

## Services

Feather consists of two services: 

1) **client** - GCP Cloud Build + Firebase Hosting + Vue + Apollo
2) **server** - GCP Cloud Run + Guvicorn + MongoDB Atlas + Graphql 

## Config

All service config is done within, feather/config. 

1) Feather features GCP cloud build / cloud run yaml files for CICD. 
   Project configuration can be found in 'server.cloudbuild.yaml' file. 
   IAM configuration and repo triggers are then required.  

2) Toucan.yaml - General configuration for services and apis. For example,
   the uri for your Mongo Atlas Cluster. 
   

Other useful scripts are found in toucan/scripts/
