# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Conductore.create(name: 'Ando_seed')
#Conductore.create(name: 'Ando_seed')
#Conductore.create(name: 'Ando_seed')

#Automovile.create(model: '2000', brand: 'Toyota', driverid: '1', alias:'Ands', code:'2')
#Automovile.create(model: '2001', brand: 'Toyotaaaa', driverid: '1', alias:'Gallooooooo', code:'3')
#Automovile.create(model: '2002', brand: 'Toyotaaaaaaa', driverid: '1', alias:'Gallooooooooo', code:'4')

load(Rails.root.join( 'db', 'seed', "#{Rails.env.downcase}.rb")) 