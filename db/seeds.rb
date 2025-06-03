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
  # Tuesday, June 3, 2025
  [ "CLT", "ATL", "Tue, 03 Jun 2025 06:30:00 -0400", "Tue, 03 Jun 2025 07:50:00 -0400" ],
  [ "JFK", "LAX", "Tue, 03 Jun 2025 08:00:00 -0400", "Tue, 03 Jun 2025 11:30:00 -0700" ],
  [ "LAX", "JFK", "Tue, 03 Jun 2025 14:30:00 -0700", "Tue, 03 Jun 2025 22:45:00 -0400" ],
  [ "DFW", "DEN", "Tue, 03 Jun 2025 09:15:00 -0500", "Tue, 03 Jun 2025 10:30:00 -0600" ],
  [ "SFO", "PHX", "Tue, 03 Jun 2025 16:20:00 -0700", "Tue, 03 Jun 2025 18:45:00 -0700" ],
  [ "MIA", "ATL", "Tue, 03 Jun 2025 11:30:00 -0400", "Tue, 03 Jun 2025 13:15:00 -0400" ],
  [ "ATL", "CLT", "Tue, 03 Jun 2025 15:45:00 -0400", "Tue, 03 Jun 2025 17:05:00 -0400" ],
  [ "DEN", "DFW", "Tue, 03 Jun 2025 13:20:00 -0600", "Tue, 03 Jun 2025 15:45:00 -0500" ],
  [ "PHX", "SFO", "Tue, 03 Jun 2025 10:10:00 -0700", "Tue, 03 Jun 2025 11:35:00 -0700" ],
  [ "LAX", "PHX", "Tue, 03 Jun 2025 07:30:00 -0700", "Tue, 03 Jun 2025 08:40:00 -0700" ],
  [ "JFK", "ATL", "Tue, 03 Jun 2025 12:15:00 -0400", "Tue, 03 Jun 2025 14:35:00 -0400" ],
  [ "SFO", "LAX", "Tue, 03 Jun 2025 19:00:00 -0700", "Tue, 03 Jun 2025 20:25:00 -0700" ],
  [ "DFW", "ATL", "Tue, 03 Jun 2025 17:30:00 -0500", "Tue, 03 Jun 2025 20:15:00 -0400" ],
  [ "ATL", "MIA", "Tue, 03 Jun 2025 18:45:00 -0400", "Tue, 03 Jun 2025 20:30:00 -0400" ],
  [ "CLT", "JFK", "Tue, 03 Jun 2025 08:20:00 -0400", "Tue, 03 Jun 2025 10:10:00 -0400" ],
  [ "DEN", "PHX", "Tue, 03 Jun 2025 16:40:00 -0600", "Tue, 03 Jun 2025 17:55:00 -0700" ],
  [ "PHX", "DEN", "Tue, 03 Jun 2025 12:25:00 -0700", "Tue, 03 Jun 2025 14:40:00 -0600" ],
  [ "LAX", "SFO", "Tue, 03 Jun 2025 21:15:00 -0700", "Tue, 03 Jun 2025 22:40:00 -0700" ],
  [ "MIA", "CLT", "Tue, 03 Jun 2025 14:20:00 -0400", "Tue, 03 Jun 2025 16:35:00 -0400" ],
  [ "SFO", "DEN", "Tue, 03 Jun 2025 09:45:00 -0700", "Tue, 03 Jun 2025 13:00:00 -0600" ],

  # Wednesday, June 4, 2025
  [ "ATL", "JFK", "Wed, 04 Jun 2025 07:45:00 -0400", "Wed, 04 Jun 2025 09:50:00 -0400" ],
  [ "DEN", "SFO", "Wed, 04 Jun 2025 10:20:00 -0600", "Wed, 04 Jun 2025 12:15:00 -0700" ],
  [ "PHX", "LAX", "Wed, 04 Jun 2025 13:10:00 -0700", "Wed, 04 Jun 2025 14:20:00 -0700" ],
  [ "CLT", "MIA", "Wed, 04 Jun 2025 15:30:00 -0400", "Wed, 04 Jun 2025 17:45:00 -0400" ],
  [ "HNL", "LAX", "Wed, 04 Jun 2025 08:00:00 -1000", "Wed, 04 Jun 2025 16:30:00 -0700" ],
  [ "LAX", "HNL", "Wed, 04 Jun 2025 22:30:00 -0700", "Thu, 05 Jun 2025 01:15:00 -1000" ],
  [ "JFK", "DFW", "Wed, 04 Jun 2025 11:25:00 -0400", "Wed, 04 Jun 2025 14:40:00 -0500" ],
  [ "SFO", "ATL", "Wed, 04 Jun 2025 06:30:00 -0700", "Wed, 04 Jun 2025 14:15:00 -0400" ],
  [ "DFW", "LAX", "Wed, 04 Jun 2025 16:50:00 -0500", "Wed, 04 Jun 2025 18:25:00 -0700" ],
  [ "ATL", "PHX", "Wed, 04 Jun 2025 09:15:00 -0400", "Wed, 04 Jun 2025 11:45:00 -0700" ],
  [ "MIA", "DEN", "Wed, 04 Jun 2025 12:40:00 -0400", "Wed, 04 Jun 2025 15:20:00 -0600" ],
  [ "CLT", "DFW", "Wed, 04 Jun 2025 18:20:00 -0400", "Wed, 04 Jun 2025 20:35:00 -0500" ],
  [ "LAX", "ATL", "Wed, 04 Jun 2025 09:30:00 -0700", "Wed, 04 Jun 2025 15:40:00 -0400" ],
  [ "PHX", "MIA", "Wed, 04 Jun 2025 05:45:00 -0700", "Wed, 04 Jun 2025 11:30:00 -0400" ],
  [ "DEN", "CLT", "Wed, 04 Jun 2025 14:35:00 -0600", "Wed, 04 Jun 2025 18:20:00 -0400" ],
  [ "JFK", "SFO", "Wed, 04 Jun 2025 19:10:00 -0400", "Wed, 04 Jun 2025 22:40:00 -0700" ],
  [ "ATL", "DEN", "Wed, 04 Jun 2025 17:25:00 -0400", "Wed, 04 Jun 2025 19:05:00 -0600" ],
  [ "SFO", "MIA", "Wed, 04 Jun 2025 15:50:00 -0700", "Wed, 04 Jun 2025 23:45:00 -0400" ],
  [ "DFW", "CLT", "Wed, 04 Jun 2025 08:40:00 -0500", "Wed, 04 Jun 2025 11:55:00 -0400" ],
  [ "MIA", "PHX", "Wed, 04 Jun 2025 20:15:00 -0400", "Wed, 04 Jun 2025 22:50:00 -0700" ],

  # Thursday, June 5, 2025
  [ "LAX", "HNL", "Thu, 05 Jun 2025 12:00:00 -0700", "Thu, 05 Jun 2025 14:45:00 -1000" ],
  [ "JFK", "MIA", "Thu, 05 Jun 2025 09:30:00 -0400", "Thu, 05 Jun 2025 12:45:00 -0400" ],
  [ "ATL", "DFW", "Thu, 05 Jun 2025 14:15:00 -0400", "Thu, 05 Jun 2025 16:20:00 -0500" ],
  [ "SFO", "DEN", "Thu, 05 Jun 2025 11:40:00 -0700", "Thu, 05 Jun 2025 14:55:00 -0600" ],
  [ "DFW", "PHX", "Thu, 05 Jun 2025 17:30:00 -0500", "Thu, 05 Jun 2025 18:15:00 -0700" ],
  [ "PHX", "ATL", "Thu, 05 Jun 2025 06:20:00 -0700", "Thu, 05 Jun 2025 11:55:00 -0400" ],
  [ "CLT", "LAX", "Thu, 05 Jun 2025 08:45:00 -0400", "Thu, 05 Jun 2025 11:20:00 -0700" ],
  [ "DEN", "MIA", "Thu, 05 Jun 2025 13:25:00 -0600", "Thu, 05 Jun 2025 18:10:00 -0400" ],
  [ "MIA", "SFO", "Thu, 05 Jun 2025 15:40:00 -0400", "Thu, 05 Jun 2025 18:55:00 -0700" ],
  [ "LAX", "DEN", "Thu, 05 Jun 2025 19:20:00 -0700", "Thu, 05 Jun 2025 22:15:00 -0600" ],
  [ "JFK", "PHX", "Thu, 05 Jun 2025 07:10:00 -0400", "Thu, 05 Jun 2025 10:35:00 -0700" ],
  [ "ATL", "SFO", "Thu, 05 Jun 2025 10:30:00 -0400", "Thu, 05 Jun 2025 13:15:00 -0700" ],
  [ "DFW", "MIA", "Thu, 05 Jun 2025 12:50:00 -0500", "Thu, 05 Jun 2025 16:35:00 -0400" ],
  [ "SFO", "CLT", "Thu, 05 Jun 2025 16:45:00 -0700", "Fri, 06 Jun 2025 00:40:00 -0400" ],
  [ "PHX", "JFK", "Thu, 05 Jun 2025 20:30:00 -0700", "Fri, 06 Jun 2025 04:55:00 -0400" ],
  [ "MIA", "LAX", "Thu, 05 Jun 2025 18:15:00 -0400", "Thu, 05 Jun 2025 21:40:00 -0700" ],
  [ "DEN", "ATL", "Thu, 05 Jun 2025 05:35:00 -0600", "Thu, 05 Jun 2025 09:40:00 -0400" ],
  [ "CLT", "SFO", "Thu, 05 Jun 2025 21:20:00 -0400", "Fri, 06 Jun 2025 00:05:00 -0700" ],
  [ "LAX", "DFW", "Thu, 05 Jun 2025 14:50:00 -0700", "Thu, 05 Jun 2025 19:25:00 -0500" ],
  [ "HNL", "SFO", "Thu, 05 Jun 2025 16:40:00 -1000", "Fri, 06 Jun 2025 00:15:00 -0700" ],

  # Friday, June 6, 2025
  [ "MIA", "JFK", "Fri, 06 Jun 2025 08:20:00 -0400", "Fri, 06 Jun 2025 11:30:00 -0400" ],
  [ "DEN", "ATL", "Fri, 06 Jun 2025 12:45:00 -0600", "Fri, 06 Jun 2025 16:50:00 -0400" ],
  [ "PHX", "DFW", "Fri, 06 Jun 2025 09:10:00 -0700", "Fri, 06 Jun 2025 12:55:00 -0500" ],
  [ "LAX", "SFO", "Fri, 06 Jun 2025 18:00:00 -0700", "Fri, 06 Jun 2025 19:25:00 -0700" ],
  [ "CLT", "DEN", "Fri, 06 Jun 2025 13:20:00 -0400", "Fri, 06 Jun 2025 15:10:00 -0600" ],
  [ "JFK", "LAX", "Fri, 06 Jun 2025 06:45:00 -0400", "Fri, 06 Jun 2025 10:15:00 -0700" ],
  [ "ATL", "MIA", "Fri, 06 Jun 2025 16:30:00 -0400", "Fri, 06 Jun 2025 18:15:00 -0400" ],
  [ "SFO", "PHX", "Fri, 06 Jun 2025 14:25:00 -0700", "Fri, 06 Jun 2025 16:50:00 -0700" ],
  [ "DFW", "SFO", "Fri, 06 Jun 2025 11:40:00 -0500", "Fri, 06 Jun 2025 13:25:00 -0700" ],
  [ "MIA", "ATL", "Fri, 06 Jun 2025 19:50:00 -0400", "Fri, 06 Jun 2025 21:35:00 -0400" ],
  [ "LAX", "CLT", "Fri, 06 Jun 2025 07:30:00 -0700", "Fri, 06 Jun 2025 14:05:00 -0400" ],
  [ "PHX", "HNL", "Fri, 06 Jun 2025 17:15:00 -0700", "Fri, 06 Jun 2025 20:30:00 -1000" ],
  [ "DEN", "JFK", "Fri, 06 Jun 2025 05:20:00 -0600", "Fri, 06 Jun 2025 10:35:00 -0400" ],
  [ "ATL", "CLT", "Fri, 06 Jun 2025 10:45:00 -0400", "Fri, 06 Jun 2025 12:05:00 -0400" ],
  [ "SFO", "LAX", "Fri, 06 Jun 2025 20:40:00 -0700", "Fri, 06 Jun 2025 22:05:00 -0700" ],
  [ "JFK", "DEN", "Fri, 06 Jun 2025 15:55:00 -0400", "Fri, 06 Jun 2025 18:40:00 -0600" ],
  [ "CLT", "PHX", "Fri, 06 Jun 2025 21:10:00 -0400", "Fri, 06 Jun 2025 23:00:00 -0700" ],
  [ "DFW", "ATL", "Fri, 06 Jun 2025 07:25:00 -0500", "Fri, 06 Jun 2025 10:10:00 -0400" ],
  [ "MIA", "DFW", "Fri, 06 Jun 2025 14:35:00 -0400", "Fri, 06 Jun 2025 17:05:00 -0500" ],
  [ "HNL", "PHX", "Fri, 06 Jun 2025 11:50:00 -1000", "Fri, 06 Jun 2025 19:25:00 -0700" ],

  # Saturday, June 7, 2025
  [ "ATL", "LAX", "Sat, 07 Jun 2025 10:30:00 -0400", "Sat, 07 Jun 2025 12:45:00 -0700" ],
  [ "JFK", "SFO", "Sat, 07 Jun 2025 16:15:00 -0400", "Sat, 07 Jun 2025 19:45:00 -0700" ],
  [ "DFW", "MIA", "Sat, 07 Jun 2025 11:25:00 -0500", "Sat, 07 Jun 2025 15:10:00 -0400" ],
  [ "PHX", "CLT", "Sat, 07 Jun 2025 07:50:00 -0700", "Sat, 07 Jun 2025 13:30:00 -0400" ],
  [ "DEN", "LAX", "Sat, 07 Jun 2025 14:40:00 -0600", "Sat, 07 Jun 2025 16:20:00 -0700" ],
  [ "LAX", "JFK", "Sat, 07 Jun 2025 08:20:00 -0700", "Sat, 07 Jun 2025 16:35:00 -0400" ],
  [ "SFO", "ATL", "Sat, 07 Jun 2025 09:45:00 -0700", "Sat, 07 Jun 2025 17:30:00 -0400" ],
  [ "MIA", "PHX", "Sat, 07 Jun 2025 13:15:00 -0400", "Sat, 07 Jun 2025 15:50:00 -0700" ],
  [ "CLT", "ATL", "Sat, 07 Jun 2025 18:40:00 -0400", "Sat, 07 Jun 2025 20:00:00 -0400" ],
  [ "ATL", "DEN", "Sat, 07 Jun 2025 06:25:00 -0400", "Sat, 07 Jun 2025 08:05:00 -0600" ],
  [ "LAX", "MIA", "Sat, 07 Jun 2025 19:30:00 -0700", "Sun, 08 Jun 2025 02:55:00 -0400" ],
  [ "JFK", "CLT", "Sat, 07 Jun 2025 12:50:00 -0400", "Sat, 07 Jun 2025 14:40:00 -0400" ],
  [ "DFW", "DEN", "Sat, 07 Jun 2025 15:35:00 -0500", "Sat, 07 Jun 2025 16:50:00 -0600" ],
  [ "PHX", "SFO", "Sat, 07 Jun 2025 21:20:00 -0700", "Sat, 07 Jun 2025 22:45:00 -0700" ],
  [ "SFO", "DFW", "Sat, 07 Jun 2025 05:40:00 -0700", "Sat, 07 Jun 2025 10:25:00 -0500" ],
  [ "MIA", "CLT", "Sat, 07 Jun 2025 17:05:00 -0400", "Sat, 07 Jun 2025 19:20:00 -0400" ],
  [ "DEN", "PHX", "Sat, 07 Jun 2025 11:15:00 -0600", "Sat, 07 Jun 2025 12:30:00 -0700" ],
  [ "ATL", "JFK", "Sat, 07 Jun 2025 20:55:00 -0400", "Sat, 07 Jun 2025 23:00:00 -0400" ],
  [ "CLT", "LAX", "Sat, 07 Jun 2025 22:10:00 -0400", "Sun, 08 Jun 2025 00:45:00 -0700" ],
  [ "HNL", "ATL", "Sat, 07 Jun 2025 13:30:00 -1000", "Sun, 08 Jun 2025 06:20:00 -0400" ],

  # Sunday, June 8, 2025
  [ "SFO", "JFK", "Sun, 08 Jun 2025 09:00:00 -0700", "Sun, 08 Jun 2025 17:30:00 -0400" ],
  [ "MIA", "DFW", "Sun, 08 Jun 2025 12:15:00 -0400", "Sun, 08 Jun 2025 15:45:00 -0500" ],
  [ "LAX", "ATL", "Sun, 08 Jun 2025 08:30:00 -0700", "Sun, 08 Jun 2025 14:40:00 -0400" ],
  [ "CLT", "PHX", "Sun, 08 Jun 2025 15:45:00 -0400", "Sun, 08 Jun 2025 17:35:00 -0700" ],
  [ "ATL", "HNL", "Sun, 08 Jun 2025 11:20:00 -0400", "Sun, 08 Jun 2025 16:10:00 -1000" ],
  [ "JFK", "ATL", "Sun, 08 Jun 2025 06:40:00 -0400", "Sun, 08 Jun 2025 08:45:00 -0400" ],
  [ "DFW", "LAX", "Sun, 08 Jun 2025 10:25:00 -0500", "Sun, 08 Jun 2025 12:00:00 -0700" ],
  [ "PHX", "DEN", "Sun, 08 Jun 2025 13:50:00 -0700", "Sun, 08 Jun 2025 16:05:00 -0600" ],
  [ "DEN", "SFO", "Sun, 08 Jun 2025 18:30:00 -0600", "Sun, 08 Jun 2025 20:25:00 -0700" ],
  [ "ATL", "MIA", "Sun, 08 Jun 2025 19:15:00 -0400", "Sun, 08 Jun 2025 21:00:00 -0400" ],
  [ "LAX", "PHX", "Sun, 08 Jun 2025 16:40:00 -0700", "Sun, 08 Jun 2025 17:50:00 -0700" ],
  [ "SFO", "CLT", "Sun, 08 Jun 2025 07:20:00 -0700", "Sun, 08 Jun 2025 15:15:00 -0400" ],
  [ "MIA", "JFK", "Sun, 08 Jun 2025 14:35:00 -0400", "Sun, 08 Jun 2025 17:45:00 -0400" ],
  [ "DFW", "PHX", "Sun, 08 Jun 2025 21:10:00 -0500", "Sun, 08 Jun 2025 21:55:00 -0700" ],
  [ "CLT", "DEN", "Sun, 08 Jun 2025 09:25:00 -0400", "Sun, 08 Jun 2025 11:15:00 -0600" ],
  [ "PHX", "LAX", "Sun, 08 Jun 2025 20:45:00 -0700", "Sun, 08 Jun 2025 21:55:00 -0700" ],
  [ "JFK", "DFW", "Sun, 08 Jun 2025 22:30:00 -0400", "Mon, 09 Jun 2025 01:45:00 -0500" ],
  [ "ATL", "CLT", "Sun, 08 Jun 2025 05:50:00 -0400", "Sun, 08 Jun 2025 07:10:00 -0400" ],
  [ "SFO", "MIA", "Sun, 08 Jun 2025 12:05:00 -0700", "Sun, 08 Jun 2025 20:00:00 -0400" ],
  [ "LAX", "DEN", "Sun, 08 Jun 2025 18:55:00 -0700", "Sun, 08 Jun 2025 21:50:00 -0600" ],

  # Monday, June 9, 2025
  [ "DEN", "JFK", "Mon, 09 Jun 2025 13:30:00 -0600", "Mon, 09 Jun 2025 18:45:00 -0400" ],
  [ "PHX", "SFO", "Mon, 09 Jun 2025 10:15:00 -0700", "Mon, 09 Jun 2025 11:40:00 -0700" ],
  [ "HNL", "DFW", "Mon, 09 Jun 2025 14:20:00 -1000", "Tue, 10 Jun 2025 06:45:00 -0500" ],
  [ "JFK", "CLT", "Mon, 09 Jun 2025 07:25:00 -0400", "Mon, 09 Jun 2025 09:15:00 -0400" ],
  [ "ATL", "DEN", "Mon, 09 Jun 2025 16:50:00 -0400", "Mon, 09 Jun 2025 18:30:00 -0600" ],
  [ "LAX", "JFK", "Mon, 09 Jun 2025 11:45:00 -0700", "Mon, 09 Jun 2025 20:00:00 -0400" ],
  [ "SFO", "PHX", "Mon, 09 Jun 2025 08:30:00 -0700", "Mon, 09 Jun 2025 10:55:00 -0700" ],
  [ "MIA", "ATL", "Mon, 09 Jun 2025 12:40:00 -0400", "Mon, 09 Jun 2025 14:25:00 -0400" ],
  [ "DFW", "CLT", "Mon, 09 Jun 2025 06:15:00 -0500", "Mon, 09 Jun 2025 09:30:00 -0400" ],
  [ "CLT", "SFO", "Mon, 09 Jun 2025 15:20:00 -0400", "Mon, 09 Jun 2025 18:05:00 -0700" ],
  [ "PHX", "ATL", "Mon, 09 Jun 2025 17:35:00 -0700", "Mon, 09 Jun 2025 23:10:00 -0400" ],
  [ "JFK", "MIA", "Mon, 09 Jun 2025 19:50:00 -0400", "Mon, 09 Jun 2025 23:05:00 -0400" ],
  [ "DEN", "LAX", "Mon, 09 Jun 2025 09:25:00 -0600", "Mon, 09 Jun 2025 11:05:00 -0700" ],
  [ "ATL", "SFO", "Mon, 09 Jun 2025 05:40:00 -0400", "Mon, 09 Jun 2025 08:25:00 -0700" ],
  [ "LAX", "MIA", "Mon, 09 Jun 2025 14:15:00 -0700", "Mon, 09 Jun 2025 21:40:00 -0400" ],
  [ "SFO", "DEN", "Mon, 09 Jun 2025 21:30:00 -0700", "Tue, 10 Jun 2025 00:45:00 -0600" ],
  [ "MIA", "PHX", "Mon, 09 Jun 2025 18:25:00 -0400", "Mon, 09 Jun 2025 21:00:00 -0700" ],
  [ "DFW", "JFK", "Mon, 09 Jun 2025 11:10:00 -0500", "Mon, 09 Jun 2025 15:35:00 -0400" ],
  [ "CLT", "ATL", "Mon, 09 Jun 2025 20:45:00 -0400", "Mon, 09 Jun 2025 22:05:00 -0400" ],
  [ "PHX", "MIA", "Mon, 09 Jun 2025 04:50:00 -0700", "Mon, 09 Jun 2025 10:35:00 -0400" ]
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
