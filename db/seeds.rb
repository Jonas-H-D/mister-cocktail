# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'open-uri'

puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end

puts "cleaning cocktail database"
Cocktail.destroy_all
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
