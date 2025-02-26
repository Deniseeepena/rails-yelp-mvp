# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Wiping seeds'
Restaurant.destroy_all

puts 'Creating seeds'

Restaurant.create(
  name: 'Paulitos Sashimi',
  address: '123 Meow Street',
  phone_number: '01234 578990',
  category: 'chinese'
)

Restaurant.create(
  name: 'Timos bird food',
  address: '456 Pasta Lane',
  phone_number: '01234 840200',
  category: 'italian'
)

Restaurant.create(
  name: 'Ozges ikram',
  address: '789 Blossom Ave',
  phone_number: '01234 283648',
  category: 'japanese'
)

Restaurant.create(
  name: 'Artems burger',
  address: '101 Baguette Blvd',
  phone_number: '01234 627394',
  category: 'french'
)

Restaurant.create(
  name: 'Valentijns Bitterballen',
  address: '202 Syrup St',
  phone_number: '01234 987123',
  category: 'belgian'
)

puts 'Seeds created!'
