from datetime import datetime
from mongoengine import Document, EmbeddedDocument
from mongoengine.fields import (
    DateTimeField,
    EmbeddedDocumentField,
    ListField,
    ReferenceField,
    StringField,
    IntField
)

class User(Document):
    '''
        Representation of user in mongodb. 
    '''
    meta            = {"collection": "users"}
    key             = StringField()
    username        = StringField()  # username [&]
    email           = StringField()
    motes           = ListField(ReferenceField('Mote'))
    friends         = ListField(ReferenceField('User'))
    followers       = ListField(ReferenceField('User'))
    
class Mote(Document):
    '''
        Representation of note in mongodb.
    '''
    meta        = {"collection": "motes"}
    title       = StringField()  # Title or headline of thesis. [&]
    summary     = StringField()  # summary text for thesis.
    content     = StringField()  # content of thesis.
