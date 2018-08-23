require 'open-uri'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

Ingredient.destroy_all

puts 'Cleaned DB'

cocktails_serialized = open(url).read
json = JSON.parse(cocktails_serialized)
json['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end



