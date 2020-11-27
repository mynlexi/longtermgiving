class FavouritesController < ApplicationController
  # create and destroy, must have user from logged in and charity by which its clicked on
  def create
    
    @favourite = Favourite.new
    authorize @favourite
    @favourite.charity = Charity.find(params[:charity_id])
    @favourite.user = current_user
    if @favourite.save
      redirect_to dashboard_path
    else
      redirect_to charity_path(@favourite.charity)
      # add flash notifaction that something went wrong
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    authorize @favourite
    @favourite.destroy
    redirect_to dashboard_path
    #or last path?
  end
  
  private
end
