class Like < ApplicationRecord
  belongs_to :user

  validates :user, uniqueness: {scope: :recipe, message: 'already liked'}
end
