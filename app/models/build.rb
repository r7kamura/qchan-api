class Build < ActiveRecord::Base
  belongs_to :job, counter_cache: true
end
