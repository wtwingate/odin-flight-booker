# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

airports = [
  [ "ATL", "Atlanta Hartsfield International Airport" ],
  [ "CLT", "Charlotte Douglas International Airport" ],
  [ "DEN", "Denver International Airport" ],
  [ "DFW", "Dallas Fort Worth International Airport" ],
  [ "HNL", "Honolulu International Airport" ],
  [ "JFK", "John F Kennedy International Airport" ],
  [ "LAX", "Los Angeles International Airport" ],
  [ "MIA", "Miami International Airport" ],
  [ "PHX", "Phoenix Sky Harbor International Airport" ],
  [ "SFO", "San Francisco International Airport" ]
]

airports.each do |code, name|
  Airport.find_or_create_by!(code: code, name: name)
end

flights = [
  [ "CLT", "ATL", "Tue, 03 Jun 2025 12:00:00 -0400", "Tue, 03 Jun 2025 13:20:00 -0400" ],
]

flights.each do |d_code, a_code, d_time, a_time|
  departure_airport = Airport.find_by_code(d_code)
  arrival_airport = Airport.find_by_code(a_code)
  departure_time = DateTime.parse(d_time)
  arrival_time = DateTime.parse(a_time)

  Flight.find_or_create_by!(departure_airport: departure_airport,
                            arrival_airport: arrival_airport,
                            departure_time: departure_time,
                            arrival_time: arrival_time)
end
