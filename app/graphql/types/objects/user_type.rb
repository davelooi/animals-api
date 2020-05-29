module Types
  module Objects
    class UserType < Types::BaseObject
      field :name, String, null: false
      field :email, String, null: false
      field :uuid, String, null: false
      field :handle, String, null: false
      field :tweets, [Types::Objects::TweetType], null: false
    end
  end
end
