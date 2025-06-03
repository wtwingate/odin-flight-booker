class Flight < ApplicationRecord
  belongs_to :departure_airport,
             class_name: "Airport"
  belongs_to :arrival_airport,
             class_name: "Airport"

  validates :departure_time, presence: true
  validates :arrival_time, presence: true
  validates :arrival_time, comparison: { greater_than: :departure_time }

  scope :by_date, ->(date) { where(departure_time: date.beginning_of_day..date.end_of_day) }

  def self.dates
    times = order(:departure_time).pluck(:departure_time)
    times.map(&:to_date).uniq
  end
end
