
import graphene

from mongo.objects import Sote as SoteObject 
from mongo.objects import User as UserObject 

from mongo.models import Sote  as SoteModel
from mongo.models import User    as UserModel

class Query(graphene.ObjectType):

    # Ex: Bulk model queries
    #    Theses queries return all models of a given type 
    #    stored in our mongo atlas cluster. 
    #
    users     = graphene.List(UserObject)
    sotes    = graphene.List(SoteObject)

    # Ex: Unique key queries
    #   Sotes queries take in a unique key of a particular object
    #   and returns a single graphene object of that type.
    #
    user    = graphene.List(UserObject,username=graphene.String())
    sote  = graphene.List(SoteObject,title=graphene.String())



    def resolve_users(self, info):
    	# Returns all user models
        return list(UserModel.objects.all())

    def resolve_sotes(self, info):
        # Returns all sote models
    	return list(SoteModel.objects.all())

    def resolve_user(root,info,username):
        # Takes in a username, returns a single user.
        return list(UserModel.objects(username=username))

    def resolve_sote(root,info,title):
        # Takes in a sote title, returns a single sote.
        return list(SoteModel.objects(title=title))

