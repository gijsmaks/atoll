# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.destroy_all

gijs = User.create(first_name: "Gijs", email: "best@island.com", password: "secret")

Island.create!(user: gijs, name: 'My island', description: 'White sandy beach', price: '20000', location: "Bahamas", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Your island', description: 'White sandy beach', price: '20000', location: "Bahamas", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Island', description: 'White sandy beach', price: '20000', location: "Bahamas", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'My island', description: 'White sandy beach', price: '20000', location: "Bahamas", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Your island', description: 'White sandy beach', price: '20000', location: "Bahamas", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(3)

Island.create!(user: gijs, name: 'Island', description: 'White sandy beach', price: '20000', location: "Bahamas", remote_photo_url: "https://source.unsplash.com/random?island")

puts Island.count
