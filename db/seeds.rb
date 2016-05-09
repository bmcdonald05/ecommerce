# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



something = Condition.create([{status: 'New'}, {status: 'Used'}, {status: 'As
Is'}, {status: 'Lightly Used'}, {status: 'Like New'}])

thing = Category.create([{name: 'Clothing'}, {name: "Vehicles"}, {name:
"Electronics"}, {name: 'Toys'}, {name: 'Books'}])
