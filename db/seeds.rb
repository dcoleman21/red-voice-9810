# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#chefs
wolfgang = Chef.create!(name: 'Wolfgang Puck')
gordon = Chef.create!(name: 'Gordon Ramsay')
bobby = Chef.create!(name: 'Bobby Flay')
masaharu = Chef.create!(name: 'Masaharu Morimoto')
#dishes
goat = wolfgang.dishes.create!(name: 'Goat Cheese-Garlic Toasts', description: 'Rich flavor. Crunchy texture.')
savory = wolfgang.dishes.create!(name: 'Savory Baked Carrot and Broccoli Rabe Terrine', description: 'Earthy flavor.')
lamb = wolfgang.dishes.create!(name: 'Marinated Rack of Lamb with Honey-Mint Vinaigrette', description: 'Sweet and savory.')

trout = gordon.dishes.create!(name: 'Pan-fried sea trout, peas & chorizo fricassée', description: 'Land and sea flavors.')
banana = gordon.dishes.create!(name: 'Frozen banana & praline parfait', description: 'Sweet and crunchy.')
lemon = gordon.dishes.create!(name: 'Lemon tart with summer berries', description: 'Tangy and sweet.')

steak = bobby.dishes.create!(name: 'Skirt Steak Tacos with Roasted Tomato Salsa', description: 'Rich authentic flavors.')
chicken = bobby.dishes.create!(name: 'Chicken Parmigiana', description: 'Traditional homestyle flavor.')
pb_brownie = bobby.dishes.create!(name: 'Peanut Butter Caramel Swirled Brownies', description: 'Rich peanuty taste with a pinch of salty.')

lettuce = masaharu.dishes.create!(name: 'Frozen Lettuce', description: 'Fresh and chill.')
sushi = masaharu.dishes.create!(name: 'Vegetable Sushi', description: 'Light and fresh.')
noodles = masaharu.dishes.create!(name: 'Daikon Fettuccine with Tomato-Basil Sauce', description: 'Rich and deep flavors.')
#ingredients
ingredient1 = Ingredient.create!(name: "tomoato", calories: 30)
ingredient2 = Ingredient.create!(name: "lemon", calories: 20)
ingredient3 = Ingredient.create!(name: "salt", calories: 5)
ingredient4 = Ingredient.create!(name: "basil", calories: 10)
ingredient5 = Ingredient.create!(name: "chicken", calories: 150)
ingredient6 = Ingredient.create!(name: "lamb", calories: 140)
ingredient7 = Ingredient.create!(name: "berries", calories: 90)
ingredient8 = Ingredient.create!(name: "peanut_butter", calories: 200)
ingredient9 = Ingredient.create!(name: "caramel", calories: 170)
ingredient10 = Ingredient.create!(name: "goat", calories: 175)
ingredient11 = Ingredient.create!(name: "veggies", calories: 100)
ingredient12 = Ingredient.create!(name: "noodles", calories: 140)
ingredient13 = Ingredient.create!(name: "trout", calories: 240)
ingredient14 = Ingredient.create!(name: "peas", calories: 50)
ingredient15 = Ingredient.create!(name: "chorizo", calories: 180)
ingredient16 = Ingredient.create!(name: "banana", calories: 90)
ingredient17 = Ingredient.create!(name: "chocolate", calories: 200)
ingredient18 = Ingredient.create!(name: "romain lettuce", calories: 20)
ingredient19 = Ingredient.create!(name: "rice", calories: 250)
#joins
DishIngredient.create!(dish: goat, ingredient: ingredient1)
DishIngredient.create!(dish: goat, ingredient: ingredient10)
DishIngredient.create!(dish: goat, ingredient: ingredient3)

DishIngredient.create!(dish: savory, ingredient: ingredient11)
DishIngredient.create!(dish: savory, ingredient: ingredient3)

DishIngredient.create!(dish: lamb, ingredient: ingredient6)
DishIngredient.create!(dish: lamb, ingredient: ingredient3)
DishIngredient.create!(dish: lamb, ingredient: ingredient1)

DishIngredient.create!(dish: trout, ingredient: ingredient3)
DishIngredient.create!(dish: trout, ingredient: ingredient13)
DishIngredient.create!(dish: trout, ingredient: ingredient14)
DishIngredient.create!(dish: trout, ingredient: ingredient15)

DishIngredient.create!(dish: banana, ingredient: ingredient3)
DishIngredient.create!(dish: banana, ingredient: ingredient16)
DishIngredient.create!(dish: banana, ingredient: ingredient17)

DishIngredient.create!(dish: lemon, ingredient: ingredient2)
DishIngredient.create!(dish: lemon, ingredient: ingredient3)

DishIngredient.create!(dish: steak, ingredient: ingredient1)
DishIngredient.create!(dish: steak, ingredient: ingredient3)
DishIngredient.create!(dish: steak, ingredient: ingredient11)

DishIngredient.create!(dish: chicken, ingredient: ingredient1)
DishIngredient.create!(dish: chicken, ingredient: ingredient3)
DishIngredient.create!(dish: chicken, ingredient: ingredient4)
DishIngredient.create!(dish: chicken, ingredient: ingredient5)

DishIngredient.create!(dish: pb_brownie, ingredient: ingredient3)
DishIngredient.create!(dish: pb_brownie, ingredient: ingredient8)
DishIngredient.create!(dish: pb_brownie, ingredient: ingredient17)

DishIngredient.create!(dish: lettuce, ingredient: ingredient3)
DishIngredient.create!(dish: lettuce, ingredient: ingredient11)
DishIngredient.create!(dish: lettuce, ingredient: ingredient18)

DishIngredient.create!(dish: sushi, ingredient: ingredient11)
DishIngredient.create!(dish: sushi, ingredient: ingredient19)

DishIngredient.create!(dish: noodles, ingredient: ingredient1)
DishIngredient.create!(dish: noodles, ingredient: ingredient3)
DishIngredient.create!(dish: noodles, ingredient: ingredient4)
DishIngredient.create!(dish: noodles, ingredient: ingredient11)
DishIngredient.create!(dish: noodles, ingredient: ingredient12)
