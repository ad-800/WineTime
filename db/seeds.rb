# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
CollectionWine.destroy_all
Wine.destroy_all
Personality.destroy_all

puts "Creating 10 wines"

#1

parameters = {
  name: 'Salento Negroamaro Rosato IGT “Calafuria” 2021 - Tormaresca',
  description: 'Ideal with meat or mushroom-based main dishes, Meat or mushroom-based pasta or rice dishes.',
  price: 12.50,
  rating: 91,
  country: 'Italy',
  region: 'Apulia',
  color: 'Rose',
  wine_type: 'Appetizer, Informal occasions.',
  bitter: 2,
  fruit: 8,
  mineral: 2,
  spice: 7,
  earth: 7
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
  wine_type: 'Informal occasions.',
  bitter: 1,
  fruit: 8,
  mineral: 5,
  spice: 2,
  earth: 0
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
  wine_type: 'Informal occasions.',
  bitter: 4,
  fruit: 5,
  mineral: 9,
  spice: 0,
  earth: 2
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
  wine_type: 'Informal occasions.',
  bitter: 1,
  fruit: 8,
  mineral: 1,
  spice: 8,
  earth: 5
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
  wine_type: 'Appetizer.',
  bitter: 0,
  fruit: 2,
  mineral: 8,
  spice: 3,
  earth: 3
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
  wine_type: 'Dinner with friends.',
  bitter: 2,
  fruit: 8,
  mineral: 1,
  spice: 6,
  earth: 7
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
  wine_type: 'Dinner with friends.',
  bitter: 0,
  fruit: 9,
  mineral: 3,
  spice: 7,
  earth: 4
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
  wine_type: 'Light lunches.',
  bitter: 0,
  fruit: 8,
  mineral: 3,
  spice: 7,
  earth: 4
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
  wine_type: 'Dinner with friends.',
  bitter: 5,
  fruit: 3,
  mineral: 5,
  spice: 8,
  earth: 8
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
  wine_type: 'Informal occasions.',
  bitter: 7,
  fruit: 2,
  mineral: 2,
  spice: 9,
  earth: 9
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
  wine_type: 'Dinner with friends.',
  bitter: 3,
  fruit: 3,
  mineral: 3,
  spice: 6,
  earth: 10
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
  wine_type: 'Dinner with friends.',
  bitter: 4,
  fruit: 7,
  mineral: 8,
  spice: 0,
  earth: 0
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
  wine_type: 'Treating yourself to something special.',
  bitter: 5,
  fruit: 3,
  mineral: 5,
  spice: 5,
  earth: 1
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
  wine_type: 'Special occasions.',
  bitter: 0,
  fruit: 6,
  mineral: 7,
  spice: 4,
  earth: 0
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
  wine_type: 'Dinner with friends.',
  bitter: 2,
  fruit: 8,
  mineral: 5,
  spice: 9,
  earth: 5
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661965940/kwnpiy82dldjh1l0hghk.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "enemigo.png", content_type: "png")
new_wine.save

puts "Finished planting Joao's seeds"

puts "Creating Personalities"

#1

parameters = {
  personality_type: 1,
  description: 'People welcome you to be a part of their circle, but would rather interact with you in a group setting than with you alone. But you don\'t need to be worried about this condition as people consider you to be a great authority in what you do. This makes up for you being a great listener and people turn to you for advice. Nonetheless, there are still people who would love to know more about you, and even if they are a few, they are the ones that you will cherish and will definitely be for keeps.',
  flavor_profile: 'The Stoic',
  wines: [1,2,3]
}

puts parameters[:flavor_profile]

new_personality = Personality.new(parameters)
new_personality.save


#2

parameters = {
  personality_type: 2,
  description: 'You might not be the kind that can push through projects to the end, and your crisp sense of direction allows others to know how to begin their first move. People need someone who will help them kick start their career or life decisions, and you are the person that they find the motivation to start. It doesn\'t matter if a plan was finished successfully or not, but your ability to mobilize when uncertainty is present is an asset that not everyone has. So do not worry if, in the long run, they start to forget you or leave you behind when they started their journey. You helped them start their journey, and they will forever be grateful to you for doing just that.',
  flavor_profile: 'The Kickstarter',
  wines: [4,5,6]
}

puts parameters[:flavor_profile]

new_personality = Personality.new(parameters)
new_personality.save

#3

parameters = {
  personality_type: 3,
  description: 'You have quite a delicate palette. You have specific preferences that are mostly on the expensive side, such as raw seafood and lobster. Your high standards can make you a bit delicate for others to manage, and if ever you are put in a situation that isn\'t in your favor, you might leave a bad taste in people\'s mouths. But this quality is still necessary for helping other people explore finer tastes, and your adherence to quality is something that will always be admirable for those who are yet to discover more of the world.',
  flavor_profile: 'The Connoisseur',
  wines: [1,5,7]
}

puts parameters[:flavor_profile]

new_personality = Personality.new(parameters)
new_personality.save

#4

parameters = {
  personality_type: 4,
  description: 'Mediators can easily make connections with anyone. Their approachable demeanor and welcoming presence allow for wide acceptance with little to no disapproval. Due to their friendliness, some people tend to distance themselves while maintaining their relationships, as they equate your wide network as having no space for an "inner circle", which most mediators think otherwise.',
  flavor_profile: 'The Mediator',
  wines: [5,1,2]
}

puts parameters[:flavor_profile]

new_personality = Personality.new(parameters)
new_personality.save

#5

parameters = {
  personality_type: 5,
  description: 'Romanntics are very invested in their ideals and devoted to their passions. They see their pursuit as cut above the rest, and is a cause for concern for others and some a cause for distress. But for the number of times they have been scorned at, the chances of seeing their passion succeed or encountering people with the same sentiments is a joy that is peace amidst the chaos.',
  flavor_profile: 'The Romantic',
  wines: [3,9,2]
}

puts parameters[:flavor_profile]

new_personality = Personality.new(parameters)
new_personality.save

#6

parameters = {
  personality_type: 6,
  description: 'Conservators are great at keeping with the status quo. They are keen to keep the tradition alive and well while still allowing some room for innovation. This is due to their commitment to their community. They thrive in their roots and will always make sure that you have something to come back to after going out in the world. WIthout conservators (and Malbecs, too) in a person\'s life, there might no be a place where they can call home.',
  flavor_profile: 'The Conservator',
  wines: [2,4,6]
}

puts parameters[:flavor_profile]

new_personality = Personality.new(parameters)
new_personality.save

#7

parameters = {
  personality_type: 7,
  description: 'Adventurers are able to adjust themselves in whatever environment they have and still make a lasting impact. People would love to spend time with adventurers to hear their stories and crazy encounters. They can easily be part of any social group, but it is not in their nature to remain in one place. They are here to explore new tastes and experiences, and their time with you is another entry in their journal. As sad as it may seem, the time spent with adventurers are actually enough to have meaningful moments that both can cherish.',
  flavor_profile: 'The Adventurer',
  wines: [5,9,6]
}

puts parameters[:flavor_profile]

new_personality = Personality.new(parameters)
new_personality.save

puts "Personalities Created"
