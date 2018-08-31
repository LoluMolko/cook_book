class Recipe < ApplicationRecord
  validates :title, :description, :difficulty_level, presence: true
  validates :difficulty_level, presence: true, inclusion: { in: 1..5, message: 'Difficulty level has to be between 1-5' }
  has_many :likes
  has_many :users, through: :likes

  mount_uploaders :images, ImageUploader

  belongs_to :category
  has_many :ingredients, through: :preparation
end
