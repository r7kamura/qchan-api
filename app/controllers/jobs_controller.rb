class JobsController < ApplicationController
  before_action :require_access_token

  validates :create do
    string :command, required: true
    string :name, required: true
    string :schedule
  end

  validates :update do
    string :command
    string :name
    string :schedule
  end

  def index
    respond_with resource_class.all
  end

  def show
    respond_with resource
  end

  def create
    respond_with resource_class.create(updatable_attributes.merge(user_id: current_access_token.user_id))
  end

  def update
    respond_with resource.update_attributes(updatable_attributes)
  end

  def destroy
    respond_with resource.destroy
  end

  private

  def resource_class
    Job
  end

  def resource
    resource_class.find(params[:id])
  end

  def updatable_attributes
    params.slice(:command, :name, :schedule)
  end
end
