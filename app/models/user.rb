class User < ActiveRecord::Base
  def self.find_or_create_by_credentials(credentials)
    find_by_credentials(credentials) || create_by_credentials!(credentials)
  end

  def self.find_by_credentials(credentials)
    find_by(provider: credentials["provider"], uid: credentials["uid"])
  end

  def self.create_by_credentials!(credentials)
    create!(
      uid: credentials["uid"],
      name: credentials["info"]["nickname"],
      email: credentials["info"]["email"],
      token: credentials["credentials"]["token"],
    )
  end
end
