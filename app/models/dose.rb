class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :cocktail_id, uniqueness: {scope: :ingredient_id}
end

# dose = Dose.new.ingredient = ingredient.find(1)
# dose.cocktail = cocktail.find(1)
