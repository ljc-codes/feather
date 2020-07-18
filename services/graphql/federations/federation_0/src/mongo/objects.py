import graphene
from graphene_mongo import MongoengineObjectType

from mongo.models import User as UserModel
from mongo.models import Mote as MoteModel

class Mote(MongoengineObjectType):
    class Meta:
        model = MoteModel

class User(MongoengineObjectType):
    class Meta:
        model = UserModel
