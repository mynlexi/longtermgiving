class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    params[:query].present?
    sql_query = "name @@ :query OR category @@ :query OR description @@ :query"
    @charities = Charity.where(sql_query, query: "%#{params[:query]}%")

    if @charities.empty?
      @charities = Charity.all
      flash[:notice] = "Sorry, search was not successful"
    end
  end

  def show
    @charity = Charity.find(params[:id])
    @choices = CharitysChoice.where(charity_id: @charity.id)
  end
end
