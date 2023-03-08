# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'seeding the database...'

Flat.create!(
  name: 'NYC Loft',
  address: '123 Upper East Side',
  description: 'A place for hipsters',
  price_per_night: 180,
  number_of_guests: 10
)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Small cottage',
  address: 'In the middle of nowhere',
  description: 'A lot like the one in The Holiday',
  price_per_night: 50,
  number_of_guests: 1
)
Flat.create!(
  name: 'A very small flat',
  address: '123 Government Road, Singapore',
  description: 'A tiny flat that is way overpriced because land is really scarce here',
  price_per_night: 200,
  number_of_guests: 5
)
