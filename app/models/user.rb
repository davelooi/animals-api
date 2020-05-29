class User < ApplicationRecord
  include HasUuid

  has_many :tweets

  validates :email, :uuid, :handle, presence: true, uniqueness: { case_sensitive: false }
end
