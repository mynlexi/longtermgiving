class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    @charities = Charity.all
  end

  def show
    @charity = Charity.find(params[:id])
    @choices = CharitysChoice.where(charity_id: @charity.id)
  end
end
