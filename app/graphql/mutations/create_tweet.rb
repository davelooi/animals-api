module Mutations
  class CreateTweet < BaseMutation
    argument :handle, String, required: true
    argument :text, String, required: true

    field :tweet, Types::Objects::TweetType, null: false

    def resolve(handle:, text:)
      {
        tweet: Tweet.create!(user: User.find_by(handle: handle), text: text)
      }
    end
  end
end
