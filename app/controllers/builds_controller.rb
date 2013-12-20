class BuildsController < ApplicationController
  before_action :require_access_token
  before_action :require_job, only: :index

  def index
    respond_with scope
  end

  def show
    respond_with resource
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
