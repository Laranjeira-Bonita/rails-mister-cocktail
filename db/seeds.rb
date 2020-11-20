# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'nokogiri'
require 'open-uri'

Cocktail.create(name: "Mint Julep")
Cocktail.create(name: "Whiskey Sour")
Cocktail.create(name: "Mojito")

resource = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
resource["drinks"].each {|small_hash| Ingredient.create(name: small_hash["strIngredient1"]) }
