class DashboardController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @favourites = current_user.favourites
    @donations = current_user.donations
    @favchar = @favourites.map { |favourite| favourite.charity }
    @is_dashboard_page = true
    # flash[:notice] = "Thank you for your donation"
  end
end
