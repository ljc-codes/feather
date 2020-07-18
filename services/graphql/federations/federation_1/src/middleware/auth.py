import os
import random

import yaml
import graphene

import jwt

config_path = os.path.join('..','..','..','config','toucan.yaml')
with open(config_path, "r") as yml_file:
    toucan_config = yaml.load(yml_file)['config']

API_MASTER_KEY = toucan_config['graphql-api']['api_key']

class APIAuthenticator:

    




