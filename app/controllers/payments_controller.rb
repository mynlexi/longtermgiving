class PaymentsController < ApplicationController
    def new
        @donation = current_user.donations.find(params[:donation_id])
    
        authorize @donation
    end
end
