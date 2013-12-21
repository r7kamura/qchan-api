class ApplicationController < ActionController::Base
  respond_to :json

  include QchanApi::Authenticatable

  rescue_from WeakParameters::ValidationError do |exception|
    render status: 400, json: { error: exception.message }
  end

  rescue_from ActiveRecord::RecordNotFound do
    render status: 404, json: { error: "Not Found" }
  end
end
