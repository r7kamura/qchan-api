class BuildsController < ApplicationController
  before_action :require_access_token
  before_action :require_job, only: [:index, :create]

  validates :update do
    integer :exit_status, description: "exit status code of the build"
    string :output, description: "stdout & stderr printed from the build"
    string :started_at, description: "time when the build started in ISO8601 format" do |value|
      !!Time.iso8601(value) rescue false
    end
    string :finished_at, description: "time when the build finished in ISO8601 format" do |value|
      !!Time.iso8601(value) rescue false
    end
  end

  def index
    respond_with scope
  end

  def show
    respond_with resource
  end

  def create
    respond_with scope.create_with_enqueue
  end

  def update
    respond_with resource.update_attributes(updatable_attributes)
  end

  private

  def resource
    Build.find(params[:id])
  end

  def scope
    @job.builds
  end

  def require_job
    @job = Job.find(params[:job_id])
  end

  def updatable_attributes
    params.slice(:exit_status, :finished_at, :output, :started_at)
  end
end
