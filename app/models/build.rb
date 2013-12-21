class Build < ActiveRecord::Base
  belongs_to :job

  before_create :set_number

  def self.create_with_enqueue
    create.tap(&:enqueue)
  end

  def enqueue
    Resque.enqueue_to(:build_jobs, "BuildJob", job.command)
  end

  private

  def set_number
    self.number = (job.builds.last.try(:number) || 0) + 1
  end
end
