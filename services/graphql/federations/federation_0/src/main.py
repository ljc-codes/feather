import os
import yaml

from starlette.applications import Starlette
from starlette.routing import Route
from starlette.middleware import Middleware
from starlette.middleware.cors import CORSMiddleware
from starlette.middleware.trustedhost import TrustedHostMiddleware
from starlette.graphql import GraphQLApp

import mongoengine
import graphene

from gql.schema import schema as gqlSchema

config_path = os.path.join('..','..','..','..','..','config','app.yaml')
with open(config_path, "r") as yml_file:
    config = yaml.load(yml_file)['config']

MONGO_URI = config['services']['graphql']['mongo_uri']['federation_0']
            
mongoengine.connect("artemis-server", host=MONGO_URI, alias="default")

routes     = [
    Route('/', GraphQLApp(schema=gqlSchema))
]

# Middleware, everything is super open for developement. 
middleware = [
    # Cors Middleware.
    Middleware(CORSMiddleware,
        allow_origins = ['*'],
        allow_headers = ['*'],
        allow_methods = ['*'],
        allow_credentials=True
        ),
    # Makes us a Trusted website.
    Middleware(TrustedHostMiddleware, allowed_hosts=['*'])
]

# Start Starlette app.
app = Starlette(routes=routes,middleware=middleware)