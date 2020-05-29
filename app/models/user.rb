class User < ApplicationRecord
  has_many :tweets

  before_save :ensure_uuid

  private

  def ensure_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
