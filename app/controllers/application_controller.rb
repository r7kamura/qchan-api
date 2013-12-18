class ApplicationController < ActionController::Base
  include QchanApi::Authenticatable

  rescue_from WeakParameters::ValidationError do |exception|
    render status: 400, json: { error: exception.to_s }
  end
end
