class Dose < ApplicationRecord
  belongs_to :cocktail
  validates :cocktail, uniqueness: { scope: :ingredient }
end
