class BuildsController < ApplicationController
  before_action :require_access_token
  before_action :require_job

  def index
    respond_with scope
  end

  private

  def scope
    @job.builds
  end

  def require_job
    @job = Job.find(params[:job_id])
  end
end
