# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.destroy_all

gijs = User.create(first_name: "Gijs", email: "best@island.com", password: "secret")

Island.create!(user: gijs, name: 'My island', description: 'White sandy beach', price: '20000', location: "Bahamas", photo: "https://images.pexels.com/photos/240526/pexels-photo-240526.jpeg?cs=srgb&dl=beach-coconut-trees-coconuts-daylight-240526.jpg&fm=jpg")

Island.create!(user: gijs, name: 'Your island', description: 'White sandy beach', price: '20000', location: "Bahamas", photo: "https://images.pexels.com/photos/240526/pexels-photo-240526.jpeg?cs=srgb&dl=beach-coconut-trees-coconuts-daylight-240526.jpg&fm=jpg")

Island.create!(user: gijs, name: 'Island', description: 'White sandy beach', price: '20000', location: "Bahamas", photo: "https://images.pexels.com/photos/240526/pexels-photo-240526.jpeg?cs=srgb&dl=beach-coconut-trees-coconuts-daylight-240526.jpg&fm=jpg")


puts Island.count
