require "factory_girl"

FactoryGirl.define do
  factory :job do
    sequence("command") {|n| "command#{n}" }
    sequence("name") {|n| "name#{n}" }
    sequence("user_id") {|n| n }
  end
end
