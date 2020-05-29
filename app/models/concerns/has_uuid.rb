module HasUuid
  extend ActiveSupport::Concern

  included do
    before_validation :ensure_uuid

    private

    def ensure_uuid
      self.uuid ||= SecureRandom.uuid
    end
  end
end
