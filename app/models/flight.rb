class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  validates :departure_time, presence: true
  validates :arrival_time, presence: true

  def duration
    seconds = arrival_time - departure_time
    ActiveSupport::Duration.build(seconds)
  end

  def self.dates
    departure_times = Flight.pluck(:departure_time)
    departure_times.map(&:to_date).uniq
  end
end
