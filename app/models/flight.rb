class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  validate :arrival_airport_cannot_be_departure_airport,
    :arrival_time_must_be_after_departure_time

  validates :departure_time, presence: true
  validates :arrival_time, presence: true

  def duration
    seconds = arrival_time - departure_time
    ActiveSupport::Duration.build(seconds)
  end

  def self.on_date(date)
    where(departure_time: date.beginning_of_day..date.end_of_day)
  end

  def self.dates
    departure_times = Flight.pluck(:departure_time)
    departure_times.map(&:to_date).uniq
  end

  private

  def arrival_airport_cannot_be_departure_airport
    if departure_airport == arrival_airport
      errors.add(:arrival_airport, "cannot be the same as departure airport")
    end
  end

  def arrival_time_must_be_after_departure_time
    if arrival_time <= departure_time
      errors.add(:arrival_time, "must be after departure time")
    end
  end
end
