require "securerandom"

class AuthenticationsController < ApplicationController
  validates :authorize do
    string :redirect_to, required: true
  end

  def iframe
    head 200
  end

  def authorize
    redirect_to oauth_authorize_path
  end

  def callback
    head 302
  end

  private

  def oauth_authorize_path
    "#{Settings.oauth_authorize_path}?#{oauth_authorize_params.to_query}"
  end

  def oauth_authorize_params
    {
      client_id: Settings.oauth_client_id,
      redirect_to: url_for(action: :callback),
      scope: Settings.oauth_scope,
      state: "#{SecureRandom.urlsafe_base64(16)}:::#{params[:redirect_to]}",
    }
  end
end
