ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
require "rspec/rails"
require "webmock/rspec"
require "fakeredis/rspec"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

Autodoc.configuration.path = "doc/api"
Autodoc.configuration.toc = true

RSpec.configure do |config|
  config.infer_base_class_for_anonymous_controllers = false
  config.run_all_when_everything_filtered = true
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.use_transactional_fixtures = true
  config.filter_run :focus

  config.include RestApiSpecHelper, type: :request
  config.include RSpec::JsonMatcher, type: :request
end
