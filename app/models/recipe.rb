class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :difficulty_level, presence: true
  validates :description, presence: true
end
