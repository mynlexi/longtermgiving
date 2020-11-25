class DonationsController < ApplicationController
  before_action :set_donation, only: [:destroy]
  before_action :set_charity


  def new
    @donation = Donation.new
    authorize @donation
  end
  def create
    @donation = Donation.new(donation_params)
    authorize @donation
    if @donation.save
      redirect_to dashboard_path
    else
      redirect_to charity_path(@charity)
      # add flash notifaction that something went wrong
    end
  end


  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def set_charity
    @charity = Charity.find(params[:charity_id])
  end

  def donation_params
    params.require(:donation).permit(:donation_amount)
  end
end
