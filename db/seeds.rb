# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.destroy_all

gijs = User.create(first_name: "Gijs", email: "best@island.com", password: "secret")

Island.create!(user: gijs, name: 'My island', description: 'White sandy beach', price: '1.000', location: "Fiji", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Your island', description: 'Surrounded by water', price: '500', location: "Bahamas", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Island', description: 'Beautiful', price: '15.000', location: "Middle America", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'My island', description: 'Volcano island', price: '10.000', location: "Java", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Island of Avalon', description: 'Your home', price: '20.000', location: "Avalon", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Island', description: 'Strictly business', price: '1.500', location: "Hawai", remote_photo_url: "https://source.unsplash.com/random?island")

puts Island.count
