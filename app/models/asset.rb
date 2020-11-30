class Asset < ApplicationRecord
  has_many :donations
  has_many :charitys_choices
  
  validates :stock_symbol, presence: true
  validates :description, presence: true
  validates :asset_type, presence: true
  
  monetize :price_cents
end
