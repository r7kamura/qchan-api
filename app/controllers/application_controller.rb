class ApplicationController < ActionController::Base
  rescue_from WeakParameters::ValidationError do |exception|
    render status: 400, json: { error: exception.to_s }
  end
end
