module Types
  module Objects
    class TweetType < Types::BaseObject
      field :text, String, null: false
      field :uuid, String, null: false
      field :user, Types::Objects::UserType, null: false
    end
  end
end
