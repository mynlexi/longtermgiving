class Donation < ApplicationRecord
  belongs_to :charity
  belongs_to :user
  belongs_to :asset

  monetize :amount_cents
end
