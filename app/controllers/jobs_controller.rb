class JobsController < ApplicationController
  before_action :require_access_token
  before_action :validate_params, only: [:create, :update]

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

  def updatable_attribute_names
    %i(name command schedule)
  end

  def updatable_attributes
    params.slice(*updatable_attribute_names)
  end

  def has_invalid_params?
    params.values_at(*updatable_attribute_names).any? {|value| !value.class.in?([NilClass, String]) }
  end

  def validate_params
    raise QchanApi::Errors::InvalidParamsError if has_invalid_params?
  end
end
