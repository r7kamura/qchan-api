require "factory_girl"
require "securerandom"

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "#{n}@example.com" }
    sequence(:name) {|n| "name#{n}" }
    token { SecureRandom.hex(32) }
  end
end
