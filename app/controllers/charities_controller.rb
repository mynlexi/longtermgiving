class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

def index
  @charities = Charity.all
end

def show
  @charity = Charity.find(params[:id])
end
end
