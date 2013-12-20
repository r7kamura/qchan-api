class BuildsController < ApplicationController
  before_action :require_access_token
  before_action :require_job, only: [:index, :create]

  def index
    respond_with scope
  end

  def show
    respond_with resource
  end

  def create
    respond_with scope.create
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
end
