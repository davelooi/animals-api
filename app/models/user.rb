class User < ApplicationRecord
  has_many :tweets

  validates :email, :uuid, :handle, presence: true, uniqueness: { case_sensitive: false }

  before_validation :ensure_uuid

  private

  def ensure_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
