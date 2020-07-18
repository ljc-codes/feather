import graphene
from graphene_mongo import MongoengineObjectType

from mongo.models import User as UserModel
from mongo.models import Note as NoteModel

class Note(MongoengineObjectType):
    class Meta:
        model = NoteModel

class User(MongoengineObjectType):
    class Meta:
        model = UserModel
