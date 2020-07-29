# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Allocine.destroy_all

puts "they are destroyed.... **********"

100.times do |index|
  film_list = Allocine.create!(
    name: Faker::Movie.unique.title, 
    year: Faker::Number.between(from: 1900, to: 2020), 
    genre: ["Comedy", "Action", "Horror", "Drama"].sample,
    synopsis: Faker::Quote.yoda,
    director: Faker::Movies::HarryPotter.character,
    allocine_rating: rand(0..5).to_f,
    already_seen: false
  )  
end

puts "they are created....   **********"