require File.expand_path("../config/application", __FILE__)
QchanApi::Application.load_tasks

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)
task default: :spec
