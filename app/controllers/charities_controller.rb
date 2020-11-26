require 'alpaca/trade/api'
class CharitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    if params[:query].present?
      sql_query = "name @@ :query OR category @@ :query OR description @@ :query"
      @charities = Charity.where(sql_query, query: "%#{params[:query]}%")
      if @charities.empty?
        @charities = Charity.all
        flash[:notice] = "Sorry, search was not successful"
      end
    else
      @charities = Charity.all
    end
  end

  def show
    set_client
    @charity = Charity.find(params[:id])
    @choices = CharitysChoice.where(charity_id: @charity.id)
    if !@choices[0].nil?
      @symbols = []
      @choices.each do |choice|
        @symbols << choice.asset.stock_symbol
      end
      # connect these to choices
      @bars = @client.bars("5Min", @symbols, limit: 1)
    else
      @bars = [1, 2, 3, 4]
    end
  end

  def set_client
    @client = Alpaca::Trade::Api::Client.new
  end
end
