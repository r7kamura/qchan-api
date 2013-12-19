class JobsController < ApplicationController
  before_action :require_access_token

  def index
    respond_with Job.all
  end

  def show
    respond_with Job.find(params[:id])
  end

  def create
    head 201
  end

  def update
    head 204
  end

  def destroy
    head 204
  end
end
