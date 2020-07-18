import graphene

from gql.queries   import Query       as GrapheneQueries
from gql.mutations import Mutations   as GrapheneMutations

from mongo.objects import User, Sote

schema = graphene.Schema(query    = GrapheneQueries,
                         mutation = GrapheneMutations,
                         types    = [User,Sote])