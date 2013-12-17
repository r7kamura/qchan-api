require "addressable/uri"
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
    redirect_to oauth_authorize_url
  end

  def callback
    @user = User.find_or_create_by_token!(get_access_token)
    @url = params[:state].split(":::", 2)[1]
  end

  private

  def oauth_authorize_url
    "#{Settings.oauth_authorize_url}?#{oauth_authorize_params.to_query}"
  end

  def oauth_authorize_params
    {
      client_id: Settings.oauth_client_id,
      redirect_uri: redirect_uri_for_oauth_provider,
      scope: Settings.oauth_scope,
      state: "#{SecureRandom.urlsafe_base64(16)}:::#{params[:redirect_to]}",
    }
  end

  def redirect_url_from_state
    params[:state].split(":::", 2)[1]
  end

  def get_access_token
    Hash[Addressable::URI.form_unencode(get_access_token_response)]["access_token"]
  end

  def get_access_token_response
    RestClient.post(
      Settings.oauth_exchange_url,
      client_id: Settings.oauth_client_id,
      client_secret: Settings.oauth_client_secret,
      code: params[:code],
      redirect_uri: redirect_uri_for_oauth_provider,
    )
  end

  def get_user_data
    JSON.parse(RestClient.get(Settings.github_user_url, authorization: "token: #{token}"))
  end

  def redirect_uri_for_oauth_provider
    url_for(action: :callback)
  end
end
