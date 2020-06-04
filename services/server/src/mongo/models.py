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
    username        = StringField()  # username [&]
    notes           = ListField(ReferenceField('Note'))  # user created notes
    
class Note(Document):
    '''
        Representation of note in mongodb.
    '''
    meta        = {"collection": "theses"}
    title       = StringField()  # Title or headline of thesis. [&]
    summary     = StringField()  # summary text for thesis.
    content     = StringField()  # content of thesis.
