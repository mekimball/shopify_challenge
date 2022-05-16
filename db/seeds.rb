# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


item_1 = Item.create(name: 'Test', description: 'this is a thing', quantity: 7, price: 5.50)
item_2 = Item.create(name: 'Test_2', description: 'this is a second thing', quantity: 17, price: 15.50)
item_3 = Item.create(name: 'Test_3', description: 'this is a third thing', quantity: 27, price: 25.50)