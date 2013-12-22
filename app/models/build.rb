class Build < ActiveRecord::Base
  belongs_to :job

  before_create :set_number

  def self.create_with_enqueue
    create.tap(&:enqueue)
  end

  def enqueue
    Resque.enqueue_to(queue_name, enqueued_class_name, attributes)
  end

  private

  def queue_name
    "builds"
  end

  def enqueued_class_name
    "QchanWorker::Builder"
  end

  def set_number
    self.number = (job.builds.last.try(:number) || 0) + 1
  end
end
