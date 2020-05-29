module Resolvers
  class User < Resolvers::Base
    type Types::Objects::UserType, null: false

    argument :handle, String, required: false
    argument :email, String, required: false

    def resolve(handle: nil, email: nil)
      ::User.find_by(handle: handle) || User.find_by(email: email)
    end
  end
end
