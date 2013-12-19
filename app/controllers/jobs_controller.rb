class JobsController < ApplicationController
  before_action :require_access_token

  def index
    respond_with Job.all
  end

  def show
    respond_with resource
  end

  def create
    head 201
  end

  def update
    head 204
  end

  def destroy
    respond_with resource.destroy
  end

  private

  def resource
    Job.find(params[:id])
  end
end
