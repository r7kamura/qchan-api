class Build < ActiveRecord::Base
  belongs_to :job, counter_cache: true

  before_create :set_number

  private

  def set_number
    self.number = job.builds.size + 1
  end
end
