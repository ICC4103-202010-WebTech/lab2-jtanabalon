# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
costumer1=User.create(username:'RaulGonzales',email:'ragonzales@hotmail.com',address:'camino del andar 334', phone:88833731)
costumer2=User.create(username:'AnaHualde',email:'anaha@gmail.com',address:'camino pastora imperio 5', phone:89944732)

place1=EventVenue.create(name:'Club Hipico',address:'camino caballo salvaje 34553', capacity: 2000)
place2=EventVenue.create(name:'Movistar',address:'camino a fantasiladia 7', capacity: 5000)
place3=EventVenue.create(name:'Casa piedra',address:'el manantial', capacity: 500)
