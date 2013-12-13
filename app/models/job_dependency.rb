class JobDependency < ActiveRecord::Base
  belongs_to :child, class_name: :Job
end
