require "securerandom"

class AccessToken < ActiveRecord::Base
  DEFAULT_SCOPES = %w[public]

  belongs_to :user

  before_create :generate_tokens

  before_create :set_default_scopes

  private

  def generate_tokens
    self.token = SecureRandom.hex(32)
    self.refresh_token = SecureRandom.hex(32)
  end

  def set_default_scopes
    self.scopes ||= DEFAULT_SCOPES.join(" ")
  end
end
