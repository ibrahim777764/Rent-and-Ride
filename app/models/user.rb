class User < ApplicationRecord
  has_secure_password
  has_many :bookings
  has_many :cars, through: :bookings
  validates :email, presence: true, uniqueness: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true

  def admin?
    role == 'admin'
  end
end
