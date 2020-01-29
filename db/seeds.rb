# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat = %w[chinese italian japanese french belgian]
resto_list = [
  {
    name: 'resto1',
    address: 'fshkjfdshkj',
    category: cat.sample,
    phone_number: '5543454'
  },
  {
    name: 'resto2',
    address: 'fshkfdsfsdjfdshkj',
    category: cat.sample,
    phone_number: '5543454'
  },
  {
    name: 'resto3',
    address: 'gfdgdfgdf',
    category: cat.sample,
    phone_number: '5543454'
  },
  {
    name: 'resto4',
    address: 'rr23r3r3r',
    category: cat.sample,
    phone_number: '5543454'
  },
  {
    name: 'resto5',
    address: 'zccxzcxcz',
    category: cat.sample,
    phone_number: '5543454'
  }
]

Restaurant.destroy_all
Restaurant.create!(resto_list)
