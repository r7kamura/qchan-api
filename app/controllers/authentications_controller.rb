require "securerandom"

class AuthenticationsController < ApplicationController
  validates :authorize do
    string :redirect_to, required: true
  end

  validates :callback do
    string :code, required: true
    string :state, required: true
  end

  def iframe
    head 200
  end

  def authorize
    redirect_to github_authorize_url
  end

  def callback
    @user = User.find_or_create_by_token!(get_access_token)
    @url = params[:state].split(":::", 2)[1]
  end

  private

  def github_authorize_url
    "#{Settings.github_authorize_url}?#{oauth_authorize_params.to_query}"
  end

  def oauth_authorize_params
    {
      client_id: Settings.github_client_id,
      redirect_uri: redirect_uri_for_oauth_provider,
      scope: Settings.github_scope,
      state: "#{SecureRandom.urlsafe_base64(16)}:::#{params[:redirect_to]}",
    }
  end

  def redirect_url_from_state
    params[:state].split(":::", 2)[1]
  end

  def get_access_token
    QchanApi::GithubClient::Exchanger.exchange(code: params[:code], redirect_uri: redirect_uri_for_oauth_provider)
  end

  def redirect_uri_for_oauth_provider
    url_for(action: :callback)
  end
end
