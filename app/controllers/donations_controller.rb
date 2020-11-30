require 'alpaca/trade/api'
class DonationsController < ApplicationController
  before_action :set_donation, only: [:destroy]
  before_action :set_args


  def new
    @donation = Donation.new
    authorize @donation
    @asset = Asset.find(params[:asset_id])
    @symbol = @asset.stock_symbol
    @bars = @client.bars("5Min",[@symbol], limit: 1)
    @price = @bars[@symbol][0].close.round
    
  end

  # new needs asset-price
  #params?
  def create

    @bars = @client.bars("5Min",[@symbol], limit: 1)
    @price = @bars[@symbol][0].close.round
    @amount = @price
    @state = 'pending'

    @asset = Asset.find(params[:donation][:asset_id])
    @symbol = @asset.stock_symbol
    @quantity = params[:donation][:quantity]
    @donation = Donation.new(donation_params)
    @amount = params[:donation][:donation_amount]
    @donation.user = current_user
    @donation.asset = @asset    
    @donation.charity = @charity
    @order = @client.new_order(
      symbol: @symbol, 
      side: 'buy',
      qty: @quantity,
      type:"market",
      time_in_force:"day"
    )
    @donation.order_id =  @client.orders(status: "all").first.id
    authorize @donation
    if @donation.save
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @charity.name,
          # images: [@charity.photo_url],
          amount: @amount,
          currency: 'eur',
          quantity: @quantity
        }],
        success_url: donation_url(@donation),
        cancel_url: donation_url(@donation)
      )

      @donation.update(checkout_session_id: session.id)
      redirect_to new_donation_payment_path(donation)
      # redirect_to dashboard_path
    else
      redirect_to charity_path(@charity)
      # add flash notifaction that something went wrong
    end
  end


  private

  def set_donation
    @donation = Donation.find(params[:id])
  end

  def set_args
    @charity = Charity.find(params[:charity_id])
    @client =  Alpaca::Trade::Api::Client.new
  end

  def donation_params
    params.require(:donation).permit(:donation_amount, :quantity)
  end
end
