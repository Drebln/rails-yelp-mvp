# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning the DB from the old data'
Restaurant.destroy_all

categories = %w[
  chinese
  italian
  japanese
  french
  belgian
]

10.times do
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  )
  puts 'Created the restaurant with the following attributes'
  puts "Name: #{resto.name}"
  puts "Address: #{resto.address}"
  puts "Phone Number: #{resto.phone_number}"
  puts "Category: #{resto.category}"
  puts ''
end
