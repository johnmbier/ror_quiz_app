# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Manufacturer.destroy_all
CarModel.destroy_all
Factory.destroy_all

ford = Manufacturer.create(name: 'Ford', domestic: true)
toyota = Manufacturer.create(name: 'Toyota', domestic: false)

ford.car_models.create(name: 'Fusion', mpg: 41, price: 26600)
ford.car_models.create(name: 'Mustang', mpg: 31, price: 23800)

flat_rock = ford.factories.create(city: 'Flat Rock', state: 'MI', unionized: false)

f150 = ford.car_models.create(name: 'F-150', mpg: 26, price: 26100)

dearborn = ford.factories.create(city: 'Dearborn', state: 'MI', unionized: false)
claycomo = ford.factories.create(city: 'Claycomo', state: 'KS', unionized: false)

flat_rock.car_models << fusion
flat_rock.car_models << Mustang

dearborn.car_models << f_150
claycomo.car_models << f_150
# both the Fusion and the Mustang are made in Flat Rock
# the F-150 is made in both Dearborn and Claycomo

tupelo = toyota.factories.create(city: 'Tupelo', state: 'MS')
georgetown = toyota.factories.create(city: 'Georgetown', state: 'KY')
lafayette = toyota.factories.create(city: 'Lafayette', state: 'IN')

corolla = toyota.car_models.create(name: 'Corolla', mpg: 42, price: 16950)
camry = toyota.car_models.create(name: 'Camry', mpg: 35, price: 22970)

tupelo.car_models << corolla
georgetown.car_models << camry
lafayette.car_models << camry

# Corollas are made in Tupelo; Camrys are made in Georgetown and Lafayette
# flat_rock = car_models_factories.create([{ factories_id: '1', car_models_id:'1'}, {factories_id: '1', car_models_id:'2'}]) 
# f150_factories = car_models_factories.create([{ car_models_id:'3', factories_id: '3'}, { car_models_id:'3', factories_id: '4'}])

# corrolla_factories = car_models_factories.create([{ car_models_id:'4', factories_id: '4'}])
# camry_factories = car_models_factories.create([{ car_models_id:'5', factories_id: '5'}, { car_models_id:'5', factories_id: '6'}])





