class DonationsController < ApplicationController
  before_action :set_donation, only: [:destroy]
  before_action :set_charity


  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def set_charity
    @charity = Charity.find(params[:charity_id])
  end

end
