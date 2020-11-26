class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @favourites = current_user.favourites
    @donations = current_user.donations
  end
end
