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
