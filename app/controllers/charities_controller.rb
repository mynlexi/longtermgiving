require 'alpaca/trade/api'
class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    @charities = Charity.all
  end

  def show
    set_client
    @charity = Charity.find(params[:id])
    @choices = CharitysChoice.where(charity_id: @charity.id)
    @symbols = []
    @choices.each do |choice|
      @symbols << choice.asset.stock_symbol
    end
    #connect these to choices
    @bars = @client.bars("5Min", @symbols, limit: 1)
  end

  def set_client
    @client =  Alpaca::Trade::Api::Client.new
  end
end
