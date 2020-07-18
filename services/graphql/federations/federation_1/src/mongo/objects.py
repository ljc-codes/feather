import graphene
from graphene_mongo import MongoengineObjectType

from mongo.models import User as UserModel
from mongo.models import Sote as SoteModel

class Sote(MongoengineObjectType):
    class Meta:
        model = SoteModel

class User(MongoengineObjectType):
    class Meta:
        model = UserModel
