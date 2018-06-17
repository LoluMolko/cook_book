class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :difficulty_level, presence: true, inclusion: { in: 1..5, message: 'Difficulty level has to be between 1-5' }
  validates :description, presence: true
  has_many :likes
  has_many :users, through: :likes
end
