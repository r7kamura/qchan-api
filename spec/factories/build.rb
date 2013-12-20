require "factory_girl"

FactoryGirl.define do
  factory :build do
    job_id { FactoryGirl.create(:job).id }
    exit_status 0
  end
end
