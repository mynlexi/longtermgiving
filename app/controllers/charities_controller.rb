class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

def index
  @charities = Charity.all
end
end
