class DashboardController < ApplicationController

   def show
       @favourites = current_user.favourites
       @
   end
   
end
