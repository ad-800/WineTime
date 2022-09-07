# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Bookmark.destroy_all
User.destroy_all
CollectionWine.destroy_all
Wine.destroy_all
Personality.destroy_all

puts "Creating Wines"

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
  earth: 7,
  wine_unique_id: 1,
  url: 'https://www.tannico.it/en/salento-negroamaro-rosato-igt-calafuria-2021-tormaresca.html'
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
  earth: 0,
  wine_unique_id: 2,
  url: 'https://www.tannico.it/en/douro-branco-eleivera-2019-dos-lusiadas.html'
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
  earth: 2,
  wine_unique_id: 3,
  url: 'https://www.tannico.it/en/baden-riesling-aop-2020-schieferkopf-tappo-a-vite.html'
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
  earth: 5,
  wine_unique_id: 4,
  url: 'https://www.tannico.it/en/bordeaux-rouge-ronan-by-clinet-clinet-2014.html'
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
  earth: 3,
  wine_unique_id: 5,
  url: 'https://www.tannico.it/en/champagne-brut-special-cuvee-bollinger.html'
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
  earth: 7,
  wine_unique_id: 6,
  url: 'https://www.tannico.it/en/valpolicella-ripasso-classico-superiore-doc-le-poiane-2018-bolla.html'
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
  earth: 4,
  wine_unique_id: 7,
  url: 'https://www.tannico.it/en/vino-de-chile-las-nubes-2019-domaine-derain.html'
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
  color: 'Rose',
  wine_type: 'Light lunches.',
  bitter: 0,
  fruit: 8,
  mineral: 3,
  spice: 7,
  earth: 4,
  wine_unique_id: 8,
  url: 'https://www.tannico.it/en/ribera-del-duero-do-cl98-2020-casa-rojo.html'
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
  earth: 8,
  wine_unique_id: 9,
  url: 'https://www.tannico.it/en/california-cabernet-sauvignon-diamond-collection-ivory-label-2018-francis-ford-coppola-winery.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860540/lm8tnop9d7ha29kllfld.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "california.png", content_type: "png")
new_wine.save

#10

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
  earth: 9,
  wine_unique_id: 10,
  url: 'https://www.tannico.it/en/friuli-colli-orientali-merlot-doc-2017-dri-roncat.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661860637/ttutjbskikyzknormmkt.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "friuli.png", content_type: "png")
new_wine.save

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
  earth: 10,
  wine_unique_id: 11,
  url: 'https://www.tannico.it/en/douro-tinto-duas-quintas-2019-casa-ramos-pinto.html'
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
  earth: 0,
  wine_unique_id: 12,
  url: 'https://www.tannico.it/en/vino-bianco-encruzado-e-arinto-2020-quinta-de-serradinha.html'
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
  earth: 1,
  wine_unique_id: 13,
  url: 'https://www.tannico.it/en/catalogsearch/result/?q=Kamptal+Gr%C3%BCner+Veltliner+1+%C3%96TW+DAC+%22Schenkenbichl%22+2016'
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
  price: 12.90,
  rating: 92,
  country: 'Italy',
  region: 'Valdobbiadene',
  color: 'White',
  wine_type: 'Special occasions.',
  bitter: 0,
  fruit: 6,
  mineral: 7,
  spice: 4,
  earth: 0,
  wine_unique_id: 14,
  url: 'https://www.tannico.it/en/valdobbiadene-prosecco-superiore-brut-cuvee-del-fondatore-2020-valdo.html'
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
  earth: 5,
  wine_unique_id: 15,
  url: 'https://www.tannico.it/en/jumilla-garnacha-do-enemigo-mio-2021-casa-rojo.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1661965940/kwnpiy82dldjh1l0hghk.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "enemigo.png", content_type: "png")
new_wine.save

# Joao's 6

parameters = {
  name: 'Brunello di Montalcino Riserva DOCG 2013 - Biondi Santi',
  description: 'Enjoy it with aged cheeses, main dishes featuring red meat.',
  price: 490.00,
  rating: 98,
  country: 'Italy',
  region: 'Tuscania',
  color: 'Red',
  wine_type: 'Special occasions.',
  bitter: 4,
  fruit: 8,
  mineral: 6,
  spice: 7,
  earth: 8,
  wine_unique_id: 16,
  url: 'https://https://www.tannico.it/en/brunello-di-montalcino-riserva-docg-2013-biondi-santi.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662482225/lxcshm9w94a0naqu8nw2.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "biondi-santi.png", content_type: "png")
new_wine.save

# Joao's 7

parameters = {
  name: 'Rioja DOCa “Ruido” 2018 - Bodega La Quinta',
  description: 'Excelent with meat or mushroom-based main dishes, meat or mushroom-based pasta or rice dishes.',
  price: 22.25,
  rating: 85,
  country: 'Spain',
  region: 'Rioja',
  color: 'Red',
  wine_type: 'Dinner with friends.',
  bitter: 6,
  fruit: 9,
  mineral: 5,
  spice: 6,
  earth: 7,
  wine_unique_id: 17,
  url: 'https://www.tannico.com/rioja-doca-ruido-2018-bodega-la-quinta.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662482952/bavp4c30far876ikdhaq.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "ruido.png", content_type: "png")
new_wine.save

# Joao's 8

parameters = {
  name: 'Franschhoek Sauvignon Blanc "Grand Cuvée" 2020 - Boschendal',
  description: 'Excelent with fish-based main dishes, vegetarian dishes.',
  price: 24.79,
  rating: 85,
  country: 'South Africa',
  region: 'Franschhoek',
  color: 'White',
  wine_type: 'Dinner with friends.',
  bitter: 7,
  fruit: 8,
  mineral: 4,
  spice: 4,
  earth: 5,
  wine_unique_id: 18,
  url: 'https://www.tannico.com/franschhoek-sauvignon-blanc-grand-cuvee-2020-boschendal.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662483499/vztbw8sbehqxc9zi6jri.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "sau.png", content_type: "png")
new_wine.save

# Joao's 9

parameters = {
  name: 'Patagonia Chardonnay “Mainquè” 2020 - Bodega Chacra',
  description: 'Excelent with fish-based appetizers, fish-based pasta or rice dishes.',
  price: 61.06,
  rating: 90,
  country: 'Argentina',
  region: 'Patagonia',
  color: 'White',
  wine_type: 'Dinner with friends.',
  bitter: 6,
  fruit: 9,
  mineral: 6,
  spice: 7,
  earth: 4,
  wine_unique_id: 19,
  url: 'https://www.tannico.com/patagonia-chardonnay-mainque-2020-bodega-chacra-104328.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662483837/ek36djr4ztweo6pikfx5.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "tany.png", content_type: "png")
new_wine.save

# Joao's 10

parameters = {
  name: 'Champagne Brut "Réserve Impériale" - Moët & Chandon',
  description: 'Excelent with fish-based appetizers, fish-based pasta or rice dishes.',
  price: 56.91,
  rating: 81,
  country: 'France',
  region: 'Champagne',
  color: 'Champagne and Sparkling',
  wine_type: 'Appetizer, Dinner with friends.',
  bitter: 8,
  fruit: 10,
  mineral: 7,
  spice: 7,
  earth: 3,
  wine_unique_id: 20,
  url: 'https://www.tannico.com/champagne-brut-reserve-imperiale-moet-chandon.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662484089/k5sbxzumzdn8s5yhnkfe.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "reserveimperial.png", content_type: "png")
new_wine.save

# 21

parameters = {
  name: 'Chablis "Les Grands Terroirs" 2020 - Samuel Billaud',
  description: 'Wonderful with crustaceans, Fish-based main dishes, Fish-based pasta or rice dishes.',
  price: 24.50,
  rating: 92,
  country: 'France',
  region: 'Burgundy',
  color: 'White',
  wine_type: 'Dinner with friends.',
  bitter: 5,
  fruit: 8,
  mineral: 5,
  spice: 3,
  earth: 3,
  wine_unique_id: 21,
  url: 'https://www.tannico.it/en/chablis-les-grands-terroirs-2020-samuel-billaud.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662541102/sxubbdjzikh8znazsjez.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "chablis.png", content_type: "png")
new_wine.save

# 22

parameters = {
  name: 'Pinot Noir "Les Côtilles" 2021 - Famille Roux',
  description: 'Tasty with main dishes featuring white meats, Meat or mushroom-based pasta or rice dishes, Meat-based pasta or rice dishes.',
  price: 10.50,
  rating: 92,
  country: 'France',
  region: 'Burgundy',
  color: 'Red',
  wine_type: 'Lunch with family.',
  bitter: 6,
  fruit: 8,
  mineral: 6,
  spice: 5,
  earth: 5,
  wine_unique_id: 22,
  url: 'https://www.tannico.it/en/pinot-noir-les-cotilles-2021-famille-roux.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662541325/htcndyf7vcilxlpcopq7.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "pinotnoirroux.png", content_type: "png")
new_wine.save

# 23

parameters = {
  name: 'Marsannay Rouge 2019 - Louis Latour',
  description: 'Yummy with main dishes featuring red meat, Main dishes featuring white meats.',
  price: 32.50,
  rating: 81,
  country: 'France',
  region: 'Burgundy',
  color: 'Red',
  wine_type: 'Lunch with family.',
  bitter: 5,
  fruit: 9,
  mineral: 5,
  spice: 5,
  earth: 5,
  wine_unique_id: 23,
  url: 'https://www.tannico.it/en/marsannay-rouge-2019-louis-latour.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662541663/ttvu8g8ozqxlrjcaq8j9.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "marsannay.png", content_type: "png")
new_wine.save

# 24

parameters = {
  name: 'Vin de France Rouge "Le Vallon" 2020 - Domaine Milan',
  description: 'To combine with main dishes featuring red meat, Poultry.',
  price: 26.00,
  rating: 80,
  country: 'France',
  region: 'Provenza',
  color: 'Red',
  wine_type: 'Dinner with friends.',
  bitter: 7,
  fruit: 9,
  mineral: 7,
  spice: 8,
  earth: 6,
  wine_unique_id: 24,
  url: 'https://www.tannico.it/en/vin-de-france-rouge-le-vallon-2020-domaine-milan.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662541878/g8pbnlm5ozgr6kfoznd7.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "francerouge.png", content_type: "png")
new_wine.save

# 25

parameters = {
  name: 'Côtes de Provence "Etoile" 2021 - Maison Mirabeau',
  description: 'Flavorful with fish-based appetizers, Fish-based main dishes, Fish-based pasta or rice dishes, Vegetarian dishes.',
  price: 23.30,
  rating: 90,
  country: 'France',
  region: 'Provenza',
  color: 'Rose',
  wine_type: 'Informal occasions.',
  bitter: 7,
  fruit: 7,
  mineral: 8,
  spice: 8,
  earth: 5,
  wine_unique_id: 25,
  url: 'https://www.tannico.it/en/catalog/product/view/id/113250/s/cotes-de-provence-etoile-2021-maison-mirabeau/'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662542072/ehgmt7pvwtmgpmwcxd1k.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "cotesmaisonmirabeau.png", content_type: "png")
new_wine.save

# 26

parameters = {
  name: 'Côteaux du Verdon Rouge IGP “La fin du bal” 2019 - Myrko Tépus',
  description: 'Enjoy it with meat-based appetizers, Salumi.',
  price: 30.00,
  rating: 89,
  country: 'France',
  region: 'Provenza',
  color: 'Red',
  wine_type: 'Appetizer.',
  bitter: 7,
  fruit: 7,
  mineral: 7,
  spice: 7,
  earth: 6,
  wine_unique_id: 26,
  url: 'https://www.tannico.it/en/coteaux-du-verdon-rouge-igp-la-fin-du-bal-2019-myrko-tepus.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662542356/nh1hptnemae2r5v2gw8i.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "verdonrouge.png", content_type: "png")
new_wine.save

# 27

parameters = {
  name: 'Vermentino di Sardegna DOC "Primo Bianco" 2021 - Cantina Mesa',
  description: 'Lovely with fish-based appetizers, Fish-based main dishes, Fish-based pasta or rice dishes.',
  price: 8.00,
  rating: 84,
  country: 'Italy',
  region: 'Sardinia',
  color: 'White',
  wine_type: 'Light lunches.',
  bitter: 6,
  fruit: 2,
  mineral: 5,
  spice: 4,
  earth: 5,
  wine_unique_id: 27,
  url: 'https://www.tannico.it/en/vermentino-di-sardegna-doc-primo-bianco-2021-cantina-mesa.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662542750/e1rjogin2kjtb6so2yqy.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "vermentinosardegna.png", content_type: "png")
new_wine.save

# 28

parameters = {
  name: 'Alta Langa Brut DOCG Limited Edition - Fontanafredda',
  description: 'Lovely with fish-based appetizers, Fish-based main dishes, Fish-based pasta or rice dishes.',
  price: 17.90,
  rating: 91,
  country: 'Italy',
  region: 'Piemonte',
  color: 'Champagne and Sparkling',
  wine_type: 'Asian dinners.',
  bitter: 6,
  fruit: 3,
  mineral: 4,
  spice: 4,
  earth: 5,
  wine_unique_id: 28,
  url: 'https://www.tannico.it/en/alta-langa-brut-docg-limited-edition-fontanafredda.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662542963/hd3rypvgto2ui11c1ruw.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "altalanga.png", content_type: "png")
new_wine.save

# 29

parameters = {
  name: 'Orvieto Classico DOC "Collezione Oro" 2020 - Piccini',
  description: 'Delicious with fish-based appetizers, Meat or mushroom-based appetizers, Quiches and meat pies, Vegetarian dishes.',
  price: 6.30,
  rating: 88,
  country: 'Italy',
  region: 'Umbria',
  color: 'White',
  wine_type: 'Dinner with friends.',
  bitter: 7,
  fruit: 2,
  mineral: 5,
  spice: 3,
  earth: 5,
  wine_unique_id: 29,
  url: 'https://www.tannico.it/en/orvieto-classico-doc-collezione-oro-2020-piccini.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662543159/g8ngdpphqhnnxjqplmqp.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "orvietoclassico.png", content_type: "png")
new_wine.save

# 30

parameters = {
  name: 'Lazio Syrah IGP “Tellus” 2019 - Falesco',
  description: 'Super with meat or mushroom-based main dishes, Meat or mushroom-based pasta or rice dishes.',
  price: 9.50,
  rating: 89,
  country: 'Italy',
  region: 'Lazio',
  color: 'Red',
  wine_type: 'Dinner with friends.',
  bitter: 3,
  fruit: 9,
  mineral: 5,
  spice: 7,
  earth: 2,
  wine_unique_id: 30,
  url: 'https://www.tannico.it/en/lazio-syrah-igp-tellus-2019-falesco.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662543544/xezvutx1wnbaqebqwtqs.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "laziosyrah.png", content_type: "png")
new_wine.save

# 31

parameters = {
  name: 'Puglia Rosato IGT 2021 - Polvanera',
  description: 'Top with fish-based appetizers, Pizza, Salumi.',
  price: 9.90,
  rating: 83,
  country: 'Italy',
  region: 'Apulia',
  color: 'Rose',
  wine_type: 'Appetizer, Dinner with friends.',
  bitter: 5,
  fruit: 7,
  mineral: 8,
  spice: 6,
  earth: 1,
  wine_unique_id: 31,
  url: 'https://www.tannico.it/en/puglia-rosato-igt-2021-polvanera.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662543774/gqpj2lsubhiu5epudhdf.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "pugliarosato.png", content_type: "png")
new_wine.save

# 32

parameters = {
  name: 'Lambrusco di Sorbara "Premium" 2021 - Cleto Chiarli',
  description: 'Perfectly combines with meat or mushroom-based appetizers, Meat or mushroom-based pasta or rice dishes.',
  price: 9.30,
  rating: 96,
  country: 'Italy',
  region: 'Emilia Romagna',
  color: 'Red',
  wine_type: 'Celebrating special occasions.',
  bitter: 3,
  fruit: 9,
  mineral: 5,
  spice: 7,
  earth: 1,
  wine_unique_id: 32,
  url: 'https://www.tannico.it/en/lambrusco-di-sorbara-premium-2021-cleto-chiarli.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662543935/cjqdwqhshuehq2kamtyv.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "lambruscodisorbara.png", content_type: "png")
new_wine.save

# 33

parameters = {
  name: 'Ottocento Bianco 2017 - Giorgio Clai',
  description: 'Amazing with main dishes featuring red meat.',
  price: 37.50,
  rating: 90,
  country: 'Croatia',
  region: 'Istria',
  color: 'White',
  wine_type: 'Formal dinners.',
  bitter: 4,
  fruit: 4,
  mineral: 7,
  spice: 5,
  earth: 4,
  wine_unique_id: 33,
  url: 'https://www.tannico.it/en/ottocento-bianco-2017-giorgio-clai.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662544327/n6ik58o8f9mpz4qc7vpg.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "ottocentocroatia.png", content_type: "png")
new_wine.save

# 34

parameters = {
  name: 'Tawny Port 10 years - Fonseca Porto',
  description: 'Great with desserts, Cheese, Chocolate.',
  price: 43.60,
  rating: 93,
  country: 'Portugal',
  region: 'Porto',
  color: 'Red',
  wine_type: 'After-dinner wine.',
  bitter: 4,
  fruit: 7,
  mineral: 4,
  spice: 4,
  earth: 4,
  wine_unique_id: 34,
  url: 'https://www.tannico.it/en/tawny-port-10-years-fonseca-porto.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662544511/k83lxb42pnwojvk9etgt.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "tawnyport.png", content_type: "png")
new_wine.save

# 35

parameters = {
  name: 'Contessa Entellina Chardonnay DOC "Chiarandà" 2019 - Donnafugata',
  description: 'Incredible with fish-based main dishes, Fish-based pasta or rice dishes.',
  price: 29.90,
  rating: 89,
  country: 'Italy',
  region: 'Sicily',
  color: 'White',
  wine_type: 'Everyday wine.',
  bitter: 6,
  fruit: 6,
  mineral: 6,
  spice: 6,
  earth: 5,
  wine_unique_id: 35,
  url: 'https://www.tannico.it/en/contessa-entellina-chardonnay-doc-chiaranda-2019-donnafugata.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662544660/xvdrlx4aeygfm4tu1gss.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "contessaentellina.png", content_type: "png")
new_wine.save

# 36

parameters = {
  name: '"We Love Pét Nat" Rosé 2020 - Weingut Weszeli',
  description: 'Extraordinary with sushi.',
  price: 17.50,
  rating: 90,
  country: 'Austria',
  region: 'Langenlois',
  color: 'Champagne and Sparkling',
  wine_type: 'Appetizer, Informal occasions.',
  bitter: 7,
  fruit: 3,
  mineral: 7,
  spice: 3,
  earth: 1,
  wine_unique_id: 36,
  url: 'https://www.tannico.it/en/we-love-pet-nat-rose-2020-weingut-weszeli.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662546228/ruzc758wwehneqw3223x.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "welovepetnat.png", content_type: "png")
new_wine.save

# 37

parameters = {
  name: 'Campania Rosato IGT "Visione" 2021 - Feudi di San Gregorio',
  description: 'Matches perfectly with fish-based appetizers, Fish-based main dishes, Fish-based pasta or rice dishes, Pizza, Salumi.',
  price: 29.90,
  rating: 89,
  country: 'Italy',
  region: 'Campania',
  color: 'Rose',
  wine_type: 'Summer dinners.',
  bitter: 7,
  fruit: 3,
  mineral: 6,
  spice: 3,
  earth: 1,
  wine_unique_id: 37,
  url: 'https://www.tannico.it/en/campania-rosato-igt-visione-2021-feudi-di-san-gregorio.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662547569/haqpapytftftjqdirdun.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "campaniarosato.png", content_type: "png")
new_wine.save

# 38

parameters = {
  name: 'Vin Rouge “Le Champs des Maures” 2019 - Les Chemins de Bassac',
  description: 'Superb with main dishes featuring red meat, Main dishes featuring white meats, Poultry',
  price: 13.50,
  rating: 87,
  country: 'Italy',
  region: 'France',
  color: 'Languedoc',
  wine_type: 'Lunch with family.',
  bitter: 7,
  fruit: 2,
  mineral: 7,
  spice: 3,
  earth: 4,
  wine_unique_id: 38,
  url: 'https://www.tannico.it/en/vin-rouge-le-champs-des-maures-2019-les-chemins-de-bassac.html'
}

puts parameters[:name]

file = URI.open("http://res.cloudinary.com/dlvzuwyxv/image/upload/v1662547787/tmaycwfzutdkvkgey8tz.png")
new_wine = Wine.new(parameters)
new_wine.photo.attach(io: file, filename: "bassac.png", content_type: "png")
new_wine.save

puts "Finished planting"

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
