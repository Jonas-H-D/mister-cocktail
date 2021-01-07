# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "rhum")
# Ingredient.create(name: "vodka")
# Ingredient.create(name: "tequila")
# Ingredient.create(name: "sugar")
# Ingredient.create(name: "lime")
# Ingredient.create(name: "expresso coffee")
# Ingredient.create(name: "cuhraso")
# Ingredient.create(name: "orange pill")
# Ingredient.create(name: "coconut milk")
# Ingredient.create(name: "pinapple juice")

puts "creating a list of cocktails"
Cocktail.create(name: 'The White Russian', rating: 3)
Cocktail.create(name: 'The Irish Coffee', rating: 3)
Cocktail.create(name: 'The Gin Gin Mule', rating: 2)
Cocktail.create(name: 'The Ramos Gin Fizz', rating: 5)
Cocktail.create(name: 'The Hanky Panky', rating: 3)
Cocktail.create(name: 'The Jungle Bird', rating: 4)
Cocktail.create(name: 'The Paloma', rating: 5)
Cocktail.create(name: 'The Cosmopolitan', rating: 4)
Cocktail.create(name: 'The Pina Colada', rating: 5)
Cocktail.create(name: 'The Amaretto Sour', rating: 5)
Cocktail.create(name: 'The Pisco Sour', rating: 3)
