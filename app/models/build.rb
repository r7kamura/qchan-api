class Build < ActiveRecord::Base
  belongs_to :job

  before_create :set_number

  private

  def set_number
    self.number = (job.builds.last.try(:number) || 0) + 1
  end
end
