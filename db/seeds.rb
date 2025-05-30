# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

airport_codes = [
  "ATL",
  "DFW",
  "DEN",
  "ORD",
  "LAX",
  "CLT",
  "LAS",
  "PHX",
  "MCO",
  "SEA"
]

airport_codes.each do |code|
  Airport.find_or_create_by!(code: code)
end

flight_details = [
  {
    departure_airport: "CLT",
    arrival_airport: "ATL",
    departure_time: "2025-05-30T14:30:00-04:00",
    arrival_time: "2025-05-30T15:50:00-04:00"
  },
  {
    departure_airport: "LAX",
    arrival_airport: "DEN",
    departure_time: "2025-05-31T08:30:00-07:00",
    arrival_time: "2025-05-31T11:00:00-06:00"
  },
  {
    departure_airport: "ORD",
    arrival_airport: "LAX",
    departure_time: "2025-06-01T07:15:00-05:00",
    arrival_time: "2025-06-01T09:45:00-07:00"
  },
  {
    departure_airport: "ATL",
    arrival_airport: "DFW",
    departure_time: "2025-06-02T10:30:00-04:00",
    arrival_time: "2025-06-02T11:45:00-05:00"
  },
  {
    departure_airport: "SEA",
    arrival_airport: "PHX",
    departure_time: "2025-06-01T13:20:00-07:00",
    arrival_time: "2025-06-01T16:05:00-07:00"
  },
  {
    departure_airport: "MCO",
    arrival_airport: "CLT",
    departure_time: "2025-05-31T16:45:00-04:00",
    arrival_time: "2025-05-31T18:25:00-04:00"
  },
  {
    departure_airport: "DFW",
    arrival_airport: "LAS",
    departure_time: "2025-06-03T09:10:00-05:00",
    arrival_time: "2025-06-03T10:25:00-07:00"
  },
  {
    departure_airport: "DEN",
    arrival_airport: "SEA",
    departure_time: "2025-06-02T14:50:00-06:00",
    arrival_time: "2025-06-02T16:35:00-07:00"
  },
  {
    departure_airport: "LAS",
    arrival_airport: "LAX",
    departure_time: "2025-06-01T19:30:00-07:00",
    arrival_time: "2025-06-01T20:40:00-07:00"
  },
  {
    departure_airport: "PHX",
    arrival_airport: "ORD",
    departure_time: "2025-06-03T06:15:00-07:00",
    arrival_time: "2025-06-03T10:35:00-05:00"
  }
]

flight_details.each do |detail|
  departure_airport = Airport.find_by_code(detail[:departure_airport])
  arrival_airport = Airport.find_by_code(detail[:arrival_airport])
  departure_time = DateTime.parse(detail[:departure_time])
  arrival_time = DateTime.parse(detail[:arrival_time])

  Flight.find_or_create_by!(departure_airport: departure_airport,
                            arrival_airport: arrival_airport,
                            departure_time: departure_time,
                            arrival_time: arrival_time)
end
