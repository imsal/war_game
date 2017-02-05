# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Bob Joe', email: 'bob@joe.com', user_name: 'bobjoe', wins: 0, losses: 0, password: 'meatloaf21', password_confirmation: 'meatloaf21')

User.create(name: 'Ted Joe', email: 'ted@joe.com', user_name: 'tedjoe', wins: 10, losses: 2, password: 'meatloaf21', password_confirmation: 'meatloaf21')

User.create(name: 'Bob Bill', email: 'bob@bill.com', user_name: 'bobbill', wins: 12, losses: 3, password: 'meatloaf21', password_confirmation: 'meatloaf21')
