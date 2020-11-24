class Charity < ApplicationRecord
  has_many :charitys_choices
  has_many :favourites
  has_many :donations

  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :description, presence: true

end
