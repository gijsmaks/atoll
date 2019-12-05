# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.destroy_all

gijs = User.create(first_name: "Gijs", email: "best@island.com", password: "secret")

Island.create!(user: gijs, name: 'Utila', description: 'White sandy beach', price: '1000', location: "Central America", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Roatán', description: 'Surrounded by water', price: '500', location: "Central America", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Island of Malou', description: 'Beautiful', price: '1200', location: "Central America", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Guanaja', description: 'Volcanic island', price: '5000', location: "Central America", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Island of Avalon', description: 'Your home', price: '8000', location: "Central America", remote_photo_url: "https://source.unsplash.com/random?island")

sleep(2)

Island.create!(user: gijs, name: 'Corfu', description: 'Strictly business', price: '1500', location: "Central America", remote_photo_url: "https://source.unsplash.com/random?island")

puts Island.count
