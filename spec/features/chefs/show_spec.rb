require 'rails_helper'

RSpec.describe 'User Story 3' do
  context 'chefs show page' do
    before(:each) do
      @wolfgang = Chef.create!(name: 'Wolfgang Puck')

      @goat = @wolfgang.dishes.create!(name: 'Goat Cheese-Garlic Toasts', description: 'Rich flavor. Crunchy texture.')
      @savory = @wolfgang.dishes.create!(name: 'Savory Baked Carrot and Broccoli Rabe Terrine', description: 'Earthy flavor.')
      @lamb = @wolfgang.dishes.create!(name: 'Marinated Rack of Lamb with Honey-Mint Vinaigrette', description: 'Sweet and savory.')

      @ingredient1 = Ingredient.create!(name: "tomoato", calories: 30)
      @ingredient3 = Ingredient.create!(name: "salt", calories: 5)
      @ingredient6 = Ingredient.create!(name: "lamb", calories: 140)
      @ingredient10 = Ingredient.create!(name: "goat", calories: 175)
      @ingredient11 = Ingredient.create!(name: "veggies", calories: 100)

      DishIngredient.create!(dish: @goat, ingredient: @ingredient1)
      DishIngredient.create!(dish: @goat, ingredient: @ingredient10)
      DishIngredient.create!(dish: @goat, ingredient: @ingredient3)

      DishIngredient.create!(dish: @savory, ingredient: @ingredient11)
      DishIngredient.create!(dish: @savory, ingredient: @ingredient3)

      DishIngredient.create!(dish: @lamb, ingredient: @ingredient6)
      DishIngredient.create!(dish: @lamb, ingredient: @ingredient3)
      DishIngredient.create!(dish: @lamb, ingredient: @ingredient1)

      visit "/chefs/#{@wolfgang.id}"
    end

    it "can see the name of the chef" do
      expect(page).to have_content(@wolfgang.name)
    end

    it "can see a link to view a list of all ingredients used by the chef" do
      expect(page).to have_link('View All Ingredients')

      click_on 'View All Ingredients'

      expect(current_path).to eq("/chefs/#{@wolfgang.id}/ingredients")
    end
  end
end
