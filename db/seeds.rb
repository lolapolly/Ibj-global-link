# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# photo1 = "https://images.pexels.com/photos/1451474/pexels-photo-1451474.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
# photo2 = "https://images.pexels.com/photos/1020320/pexels-photo-1020320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
# photo3 = "https://images.pexels.com/photos/1939485/pexels-photo-1939485.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
# photo4 = "https://images.pexels.com/photos/1260289/pexels-photo-1260289.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
# photos = [ photo1, photo2, photo3, photo4 ]


# require 'faker'

# Item.destroy_all

# puts 'Creating 5 items...'

# 5.times do |i|
#   tile = Item.new (
#     name: "Granito",
#     description: "Excellent indoor material",
#     price: 12,
#     category: "Indoor tiles"
#   )

#   tile.remote_photo_url = "#{photos.sample}"
#   tile.save!
#   puts "#{i + 1}. #{tile.name}"

# end

# puts 'Finished!'
puts "Creating a user"

lola = User.new(email: "lola@gmail.com", admin: true, encrypted_password: 123456)
lola.save!

puts "Creating an item"

url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
tile = Item.new(name: "Granito verde", description: "A great surface", price: "2", category: "Granito" )
tile.remote_photo_url = url
tile.save!
