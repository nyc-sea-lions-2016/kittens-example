# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(username:'steven22', email:'steven22@example.com', password:'sc123456')

Kitten.create!(name: 'Tabby', breed:'American Shorthair', description: 'Moggie', date_of_birth: '2014-01-01', temperament: 'vicious')
Kitten.create!(name: 'Jimmy', breed:'American Shorthair', description: 'Moggie', date_of_birth: '2014-01-01', temperament: 'vicious')
Kitten.create!(name: 'Whiskers', breed:'American Shorthair', description: 'Moggie', date_of_birth: '2014-01-01', temperament: 'vicious')
Kitten.create!(name: 'Mittens', breed:'American Shorthair', description: 'Moggie', date_of_birth: '2014-01-01', temperament: 'vicious')
Kitten.create!(name: 'Casablanca', breed:'American Shorthair', description: 'Moggie', date_of_birth: '2014-01-01', temperament: 'vicious')
