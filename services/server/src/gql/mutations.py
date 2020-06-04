import graphene

from mongo.objects import Note as NoteObject
from mongo.objects import User as UserObject

from mongo.models import Note as NoteModel
from mongo.models import User as UserModel

class CreateUser(graphene.Mutation):
    '''
        Creates User model in mongo db via mongoengine and graphene. 
    '''
    class Arguments:
        
        username = graphene.String()
        email    = graphene.String()

    ok = graphene.Boolean()
    user = graphene.Field(lambda: UserObject)

    def mutate(root, info, username,email):

        # Instantiates new user model.
        user = UserModel(
            username = username,
            email    = email,
            notes    = [])
        # Saves user model.
        user.save()

        # Returns ok status.
        ok = True

        return CreateUser(user=user,ok=ok)

class CreateNote(graphene.Mutation):
    '''
        Creates a Note, given some inputs, this is 
        the inputs that the user supplies in fields from 
        the frontend.
    '''
    class Arguments:

        title = graphene.String()
        username = graphene.String()
        summary = graphene.String()
        content = graphene.String()

    ok = graphene.Boolean()
    note = graphene.Field(lambda: NoteObject)

    def mutate(root, info,title,username,summary,content):
        # Instantiate a new note model.
        note  = NoteModel(
            title     = title,
            summary   = summary,
            content   = content)
        # Saves note
        note.save()
        # Gets author user model.
        author  = list(UserModel.objects(username=username))[0]
        # Adds note to user model and save.
        author.notes.append(note); author.save()
        # Returns ok status.
        ok = True
        return CreateNote(note=note,ok=ok)


class Mutations(graphene.ObjectType):

    create_user   = CreateUser.Field()
    create_note   = CreateNote.Field()


