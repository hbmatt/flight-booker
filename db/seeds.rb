# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create([
  {code: 'SFO'}, {code: 'JFK'}, {code: 'ORD'}, {code: 'LAX'}
])

Flight.create([
  {from_airport_id: 1, to_airport_id: 2, departure_time: '2020-09-03 06:20', duration: '5h 27m'}, {from_airport_id: 1, to_airport_id: 2, departure_time: '2020-09-03 12:50', duration: '5h 37m'}, {from_airport_id: 2, to_airport_id: 1, departure_time: '2020-09-03 08:10', duration: '6h 16m'}, {from_airport_id: 2, to_airport_id: 1, departure_time: '2020-09-03 14:55', duration: '6h 28m'},
])