class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :difficulty_level, presence: true
  validates :description, presence: true
  has_many :likes
  has_many :users, through: :likes
end
