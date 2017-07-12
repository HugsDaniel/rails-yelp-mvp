# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "italian",
    phone_number: 0296856548
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "chinese",
    phone_number: 0679584525
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    category:     "french",
    phone_number: 0745859565
  },
  {
    name:         "Chez Jean-Mich",
    address:      "Place de l'Eglise 22800 Boquého",
    category:     "belgian",
    phone_number: 0648495948
  },
  {
    name:         "Le St-Do",
    address:      "Place de la Mairie 22800 Saint-Donan",
    category:     "french",
    phone_number: 0296739594
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
