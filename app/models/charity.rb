class Charity < ApplicationRecord
  has_many :charitys_choices
  has_many :favourites
  has_many :donations

  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :description, presence: true

end
