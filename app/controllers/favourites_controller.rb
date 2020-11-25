class FavouritesController < ApplicationController
  # create and destroy, must have user from logged in and charity by which its clicked on
  def create
    @favourite = Favourite.new
    @favourite.charity = Charity.find(params[:charity_id])
    @favourite.user = current_user
    if @donation.save
      redirect_to dashboard_path
    else
      redirect_to charity_path(@favourite.charity)
      # add flash notifaction that something went wrong
    end
  end

  def destroy
    @favourite.destroy
    redirect_to dashboard_path
    #or last path?
  end
end
