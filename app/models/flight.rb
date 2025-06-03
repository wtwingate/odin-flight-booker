class Flight < ApplicationRecord
  belongs_to :departure_airport,
             class_name: "Airport"
  belongs_to :arrival_airport,
             class_name: "Airport"

  validates :departure_time, presence: true
  validates :arrival_time, presence: true
  validates :arrival_time, comparison: { greater_than: :departure_time }
end
