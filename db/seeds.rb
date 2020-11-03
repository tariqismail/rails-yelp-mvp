# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rest1 = { name: 'Oregano', address: 'Dubai Internet City', category: 'italian', phone_number: '(04) 345-7689' }
rest2 = { name: 'Sumo Sushi and Bento', address: 'Jumeirah Lake Towers', category: 'japanese', phone_number: '800 7866' }
rest3 = { name: 'Le Pain Quatendien', address: 'Springs Souq, Emirates Living Community', category: 'french', phone_number: '(04) 356-9834' }
rest4 = { name: 'Bentoya', address: 'Sheikh Zayed Road', category: 'japanese', phone_number: '(04) 344-6789'}
rest5 = { name: 'Royal China', address: 'Dubai International Financial Centre (DIF2C)', category: 'chinese', phone_number: '(04) 334-2309' }

puts 'Cleaning database...'
Restaurant.delete_all
puts 'Database purged.'

puts 'Creating restaurants'
[rest1, rest2, rest3, rest4, rest5].each do |restaurant|
  Restaurant.create(restaurant)
end

puts "#{Restaurant.count} restaurants created."
