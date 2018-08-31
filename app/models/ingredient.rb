class Ingredient < ApplicationRecord
  has_many :recipes, through: :preparation
end
