module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, Types::Objects::UserType, null: true, resolver: Resolvers::User
    field :users, [Types::Objects::UserType], null: false

    def users
      User.all
    end
  end
end
