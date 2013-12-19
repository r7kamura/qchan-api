require File.expand_path("../boot", __FILE__)

require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(:default, Rails.env)

module QchanApi
  class Application < Rails::Application
    config.i18n.enforce_available_locales = true

    config.autoload_paths << "lib"

    config.middleware.use Rack::AcceptDefault

    config.time_zone = ENV["TIME_ZONE"] if ENV["TIME_ZONE"]
  end
end
