class Passenger < ApplicationRecord
  belongs_to :booking
  has_one :flight, through: :booking

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
