require 'alpaca/trade/api'
class AlpacaController < ApplicationController
  skip_after_action :verify_authorized

  def client
    set_client
    @asset = @client.asset(symbol: "CORN")
    @bars = @client.bars("5Min",["CORN", "GLD"], limit: 1)
    
  end

  def new
    set_client
    @symbol = "CORN"
    @quantity = "100"
    @order = @client.new_order(
      symbol: @symbol, 
      side: 'buy',
      qty: @quantity,
      type:"market",
      time_in_force:"day"
    )
    @donation = Donation.new
    @donation.user = User.find(1)
    @donation.asset_id = Asset.where(stock_symbol: @symbol)
    @donation.charity = Charity.find(1)
    @donation.quantity = @quantity
    @donation.symbol = @symbol
    @donation.order_id = @client.orders.first.id


    
    
  end

  def set_client
    @client =  Alpaca::Trade::Api::Client.new
  end


end
