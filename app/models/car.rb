class Car < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { in: 0..100 }
  validates :description, presence: true, length: { in: 0..350 }
  validates :price, presence: true, numerically: { only_integer: true, greater_than_or_equal_to: 0 }
end
