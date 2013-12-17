class User < ActiveRecord::Base
  def self.find_or_create_by_token!(token)
    if user = find_by(token: token)
      user
    else
      table = QchanApi::GithubClient::Diagnoser.diagnose(token)
      create!(
        email: table["email"],
        name: table["login"],
        uid: table["id"],
        token: token,
      )
    end
  end
end
