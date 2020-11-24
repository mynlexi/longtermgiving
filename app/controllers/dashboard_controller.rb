class DashboardController < ApplicationController

   def show
       @favourites = current_user.favourites
       @donations = current_user.donations.where(order_status: "Filled")
   end
   
end
