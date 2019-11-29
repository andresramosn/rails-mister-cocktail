# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts "deleting existing DB"
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts "creating cocktails"
cuba_libre = Cocktail.create(name: "cuba libre")
pisco_sour = Cocktail.create(name: "pisco sour")
mojito = Cocktail.create(name: "mojito")

puts "creating ingredients"
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")
coke = Ingredient.create(name: "coca cola")
egg = Ingredient.create(name: "egg white")
pisco = Ingredient.create(name: "pisco")
rum = Ingredient.create(name: "rum")
sugar = Ingredient.create(name: "sugar")
soda = Ingredient.create(name: "soda")

puts "creating doses"
Dose.create(description: "1 shot", cocktail_id: cuba_libre.id, ingredient_id: lemon.id)
Dose.create(description: "1 shot", cocktail_id: pisco_sour.id, ingredient_id: lemon.id)
Dose.create(description: "1 shot", cocktail_id: mojito.id, ingredient_id: lemon.id)
Dose.create(description: "1 cup", cocktail_id: pisco_sour.id, ingredient_id: ice.id)
Dose.create(description: "1 cup", cocktail_id: cuba_libre.id, ingredient_id: ice.id)
Dose.create(description: "1 cup", cocktail_id: mojito.id, ingredient_id: ice.id)
Dose.create(description: "1/2 shot", cocktail_id: mojito.id, ingredient_id: rum.id)
Dose.create(description: "1/2 shot", cocktail_id: pisco_sour.id, ingredient_id: pisco.id)
Dose.create(description: "1/2 shot", cocktail_id: cuba_libre.id, ingredient_id: rum.id)
Dose.create(description: "1 spoon", cocktail_id: mojito.id, ingredient_id: mint.id)
Dose.create(description: "1 spoon", cocktail_id: pisco_sour.id, ingredient_id: sugar.id)
Dose.create(description: "1 spoon", cocktail_id: mojito.id, ingredient_id: sugar.id)
Dose.create(description: "1/2 cup", cocktail_id: cuba_libre.id, ingredient_id: coke.id)
Dose.create(description: "1 unit", cocktail_id: pisco_sour.id, ingredient_id: egg.id)
Dose.create(description: "1/2 cup", cocktail_id: mojito.id, ingredient_id: soda.id)


puts "#{Cocktail.count} cocktails created & #{Ingredient.count} ingredients created & #{Dose.count} doses created  "
