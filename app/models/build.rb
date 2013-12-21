class Build < ActiveRecord::Base
  belongs_to :job

  before_create :set_number

  def self.perform(command)
  end

  def self.create_with_enqueue
    create.tap(&:enqueue)
  end

  def enqueue
    Resque.enqueue_to(:builds, "Build", job.command)
  end

  private

  def set_number
    self.number = (job.builds.last.try(:number) || 0) + 1
  end
end
