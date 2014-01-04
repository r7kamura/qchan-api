require File.expand_path("../boot", __FILE__)

require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(:default, Rails.env)

module QchanApi
  class Application < Rails::Application
    config.action_controller.permit_all_parameters = true
    config.autoload_paths << "lib"
    config.i18n.enforce_available_locales = true
    config.middleware.use Rack::AcceptDefault
    config.time_zone = ENV["TIME_ZONE"] if ENV["TIME_ZONE"]

    config.middleware.use Rack::Cors do
      allow do
        origins "*"
        resource(
          "*",
          credentials: true,
          headers: :any,
          max_age: 86400,
          methods: [:get, :post, :put, :delete, :options],
        )
      end
    end
  end
end
