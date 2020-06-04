# server

SUMMARY

    This is our backend/server. 

    It is a Starlette-Graphql-MongoDB Atlas backend

    To further expand it is a: 
    Uvicorn-Starlette-Graphene-Graphql-MongoEngine-MongoDB Atlas - backend.

    The core code can be found in '/src'. There are a few files here.
    I think the structure is intuitive but i've done a lot of commenting to make things clear
    I have also pasted some links to documentation for some of the libraries.

    You can find instructions on how to log into Mongo atlas in the readme at top level.
    All data is in a cluster name: 'cluster-0'.

STRUCTURE

-server
    - src 
        - config 
            - artemis-mongoatlas-gateway.json - credentials to access mongodb atlas cluster-0.
        - gql 
            - mutation.py - mongoengine-graphene mutations
            - queries.py  - mongoengine-graphene queries
            - schema.py   - graphql schema 
        - mongo 
            - objects - mongoengine object type representation of models 
            - models  - python graphene model class definitions
        - main.py - entry point for server init  
    - Dockerfile
    - README.txt
    - requirement.txt 


RUNNING THE PROJECT
## Project Run (Docker)

```
run 'docker build -t artemis-server .' to build the image 
run 'docker run -d --name artemis -p 80:80 artemis-server' to run the image in a container. 
You can now go to:'http://0.0.0.0:80' for the endpoint / iql graphql interface. 
```

## Project Run (Vanilla Python)

'''
run 'pip3 install -r requirements.txt'
cd into '../services/server/src'
run 'uvicorn main:app'
You can now go to:'http://127.0.0.1:8000/' for the endpoint/ iql graphql interface. 
'''