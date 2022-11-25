class Car < ApplicationRecord
  validates :image, presence: true, length: { in: 0..250 }
  validates :name, presence: true, length: { in: 0..100 }
  validates :description, presence: true, length: { in: 0..350 }
  validates :price, presence: true, numericality: { only_decimal: true, greater_than_or_equal_to: 0 }
  validates :location, presence: true, length: { in: 0..250 }
  validates :duration, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  has_many :bookings
  has_many :users, through: :bookings
end
