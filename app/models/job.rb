class Job < ActiveRecord::Base
  has_many :builds, dependent: :destroy
  has_many :children, source: :child, through: :job_dependencies
  has_many :job_dependencies, foreign_key: :parent_id
  has_many :subscriptions, dependent: :destroy
end
