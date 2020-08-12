# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+7757771496", category: "belgian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+4457771496", category: "italian" }
yen_burger = { name: "Yen Burger", address: "1B Southwark St", phone_number: "+3357771496", category: "french" }
tower_mangal = { name: "Tower Mangal", address: "Tower Bridge Rd", phone_number: "+2257771496", category: "japanese" }
kalamaki = { name: "Kalamaki", address: "187 Hercules Road", phone_number: "+1157771496", category: "japanese" }

[dishoom, pizza_east, yen_burger, tower_mangal, kalamaki].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
