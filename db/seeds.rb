# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
my_sushi = { name: 'My Sushi', address: 'Quai des Marques, Bordeaux', category: 'japanese' }
moule_frite = { name: 'La Moule et la Frite', address: 'Rue du Palais Bourbon, Paris', category: 'belgian' }
china_delices = { name: 'Les Délices de Chine', address: 'Quai de Paludate, Bordeaux', category: 'chinese' }

[dishoom, pizza_east, my_sushi, moule_frite, china_delices].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
