
import graphene

from mongo.objects import Mote as MoteObject 
from mongo.objects import User as UserObject 

from mongo.models import Mote  as MoteModel
from mongo.models import User  as UserModel

class Query(graphene.ObjectType):

    # Ex: Bulk model queries
    #    Theses queries return all models of a given type 
    #    stored in our mongo atlas cluster. 
    #
    users     = graphene.List(UserObject)
    motes    = graphene.List(MoteObject)

    # Ex: Unique key queries
    #   Notes queries take in a unique key of a particular object
    #   and returns a single graphene object of that type.
    #
    user    = graphene.List(UserObject,username=graphene.String())
    mote  = graphene.List(MoteObject,title=graphene.String())



    def resolve_users(self, info):
    	# Returns all user models
        return list(UserModel.objects.all())

    def resolve_motes(self, info):
        # Returns all note models
    	return list(MoteModel.objects.all())

    def resolve_user(root,info,username):
        # Takes in a username, returns a single user.
        return list(UserModel.objects(username=username))

    def resolve_mote(root,info,title):
        # Takes in a note title, returns a single note.
        return list(MoteModel.objects(title=title))

