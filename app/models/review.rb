class Review < ApplicationRecord
  validates :restaurant, :content, :rating, presence: true
  validates :rating, inclusion: {
    in: 0..5,
    message: '%{value} is not a valid rating'
  }
  validates :rating, numericality: { only_integer: true }

  belongs_to :restaurant
end
