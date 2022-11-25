class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :car
    # validates :start_date, :end_date, :city, presence: true
end