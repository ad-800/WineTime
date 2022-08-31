# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Wine.destroy_all

puts "Creating 10 seeds"

#1

parameters = {
  name: 'Salento Negroamaro Rosato IGT “Calafuria” 2021 - Tormaresca',
  description: 'Ideal with meat or mushroom-based main dishes, Meat or mushroom-based pasta or rice dishes.',
  price: 12.50,
  rating: 91,
  country: 'Italy',
  region: 'Apulia',
  color: 'Rose',
  wine_type: 'Appetizer, Informal occasions.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860511/swhtj3pghgg8cxyhrw5k.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "calafuria.png", content_type: "png")
new_wine.save

#2

parameters = {
  name: 'Douro Branco "Eleivera" 2019 - Dos Lusíadas',
  description: 'Perfect with crustaceans, Fish-based appetizers, Fish-based main dishes, Fish-based pasta or rice dishes.',
  price: 10.90,
  rating: 88,
  country: 'Portugal',
  region: 'Douro',
  color: 'White',
  wine_type: 'Informal occasions.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860613/aoa3bmlcx4wvlta1nrto.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "eleivera.png", content_type: "png")
new_wine.save

#3

parameters = {
  name: 'Baden Riesling AOP 2020',
  description: 'Awesome with fish-based main dishes, Fresh cheeses, Grilled vegetables, Spicy or fragrant dishes, Vegetarian dishes.',
  price: 10.90,
  rating: 90,
  country: 'Germany',
  region: 'Baden',
  color: 'White',
  wine_type: 'Informal occasions.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860680/qlqe3smufdir5kemujsh.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "riesling.png", content_type: "png")
new_wine.save

#4

parameters = {
  name: 'Bordeaux Rouge “Ronan by Clinet” 2014 - Clinet',
  description: 'Fantastic with aged cheeses, Main dishes featuring red meat, Meat or mushroom-based main dishes, Meat or mushroom-based pasta or rice dishes.',
  price: 14,
  rating: 80,
  country: 'France',
  region: 'Bordeaux',
  color: 'Red',
  wine_type: 'Informal occasions.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860469/m75jgmpc7lacydokx9mi.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "bordeaux.png", content_type: "png")
new_wine.save

#5

parameters = {
  name: 'Champagne Brut "Special Cuvée" - Bollinger',
  description: 'Great companion for fish-based main dishes, Main dishes featuring white meats.',
  price: 49.50,
  rating: 91,
  country: 'France',
  region: 'Champagne',
  color: 'Champagne and Sparkling',
  wine_type: 'Appetizer.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860562/ts8nfzqtsx3h6qkeofbp.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "champagne.png", content_type: "png")
new_wine.save

#6

parameters = {
  name: 'Valpolicella Ripasso Classico Superiore DOC "Le Poiane" 2018 - Bolla',
  description: 'Drink me with aged cheeses, Main dishes featuring red meat, Meat-based pasta or rice dishes!',
  price: 13.90,
  rating: 81,
  country: 'Italy',
  region: 'Veneto',
  color: 'Red',
  wine_type: 'Dinner with friends.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860700/xjzpwrhwjgqssjnknul6.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "valpolicella.png", content_type: "png")
new_wine.save

#7

parameters = {
  name: 'Vino de Chile "Las Nubes" 2019 - Domaine Derain',
  description: 'Lovely Main dishes featuring white meats, Meat or mushroom-based pasta or rice dishes.',
  price: 36.20,
  rating: 83,
  country: 'Chile',
  region: 'Casablanca Valley',
  color: 'Red',
  wine_type: 'Dinner with friends.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860590/bbdbkidqrudlhcrivcby.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "chile.png", content_type: "png")
new_wine.save

#8

parameters = {
  name: 'Ribera del Duero DO "Haru" 2021 - Casa Rojo',
  description: 'Great with fish-based appetizers, Meat-based appetizers, Vegetarian dishes.',
  price: 15.90,
  rating: 91,
  country: 'Portugal',
  region: 'Douro',
  color: 'White',
  wine_type: 'Light lunches.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860658/ruoysrdd7yash5yas32l.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "ribera.png", content_type: "png")
new_wine.save

#9

parameters = {
  name: 'California Cabernet Sauvignon "Diamond Collection Ivory Label" 2018',
  description: 'Excellent with main dishes featuring red meat.',
  price: 27.80,
  rating: 80,
  country: 'USA',
  region: 'California',
  color: 'Red',
  wine_type: 'Dinner with friends.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860540/lm8tnop9d7ha29kllfld.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "california.png", content_type: "png")
new_wine.save

#10

puts "Creating João's 10 seeds"

parameters = {
  name: 'Friuli Colli Orientali Merlot DOC 2017 - Dri Roncat',
  description: 'Enjoy it with main dishes featuring red meat, Meat or mushroom-based pasta or rice dishes.',
  price: 8.90,
  rating: 87,
  country: 'Italy',
  region: 'Friuli',
  color: 'Red',
  wine_type: 'Informal occasions.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860637/ttutjbskikyzknormmkt.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "friuli.png", content_type: "png")
new_wine.save

puts "Finished planting"

# Joao 1

parameters = {
  name: 'Douro Tinto "Duas Quintas" 2019 - Casa Ramos Pinto',
  description: 'Excellent with meat or mushroom-based main dishes, meat or mushroom-based pasta or rice dishes.',
  price: 30.40,
  rating: 91,
  country: 'Portugal',
  region: 'Douro',
  color: 'Red',
  wine_type: 'Dinner with friends.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661963868/xxikfhdryelv405acrjn.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "quintas.png", content_type: "png")
new_wine.save

# Joao 2

parameters = {
  name: '"Encruzado e Arinto" Branco 2020 - Quinta de Serradinha',
  description: 'Enjoy it with crustaceans, fish-based main dishes, middle Eastern dishes.',
  price: 34.64,
  rating: 80,
  country: 'Portugal',
  region: 'Douro',
  color: 'White',
  wine_type: 'Dinner with friends.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661964447/brtgs9vm7c0pbkytxgzx.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "ecruzado.png", content_type: "png")
new_wine.save

# Joao 3

parameters = {
  name: 'Kamptal Grüner Veltliner 1 ÖTW DAC "Schenkenbichl" 2016 - Weingut Weszeli',
  description: 'Excellent with fish-based main dishes, main dishes featuring white meats.',
  price: 40.41,
  rating: 91,
  country: 'Austria',
  region: 'Kamptal',
  color: 'White',
  wine_type: 'Treating yourself to something special.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661965063/oeclizbfjq8unshoyrsg.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "ecruzado.png", content_type: "png")
new_wine.save

# Joao 4

parameters = {
  name: 'Valdobbiadene Prosecco Superiore Brut "Cuvée del Fondatore" 2020 - Valdo',
  description: 'Enjoy it fish-based appetizers, meat or mushroom-based appetizers.',
  price: 24.17,
  rating: 92,
  country: 'Italy',
  region: 'Valdobbiadene',
  color: 'White',
  wine_type: 'Special occasions.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661965565/abvg1zzwp7ej28opo8hx.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "fonda.png", content_type: "png")
new_wine.save

# Joao 5

parameters = {
  name: 'Jumilla Garnacha DO "Enemigo Mio" 2021 - Casa Rojo',
  description: 'Perfect for main dishes featuring red meat, meat-based pasta or rice dishes.',
  price: 25.43,
  rating: 88,
  country: 'Spain',
  region: 'Jumilla',
  color: 'Red',
  wine_type: 'Dinner with friends.'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661965940/kwnpiy82dldjh1l0hghk.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "enemigo.png", content_type: "png")
new_wine.save

puts "Finished planting Joao's seeds"
