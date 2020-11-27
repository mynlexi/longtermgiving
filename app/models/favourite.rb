class Favourite < ApplicationRecord
  belongs_to :charity
  belongs_to :user

  validates :user, uniqueness: { scope: :charity }
end
