class Job < ActiveRecord::Base
  has_many :builds, dependent: :destroy
  has_many :children, source: :child, through: :job_dependencies, dependent: :destroy
  has_many :job_dependencies, foreign_key: :parent_id, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
end
