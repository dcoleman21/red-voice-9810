require 'rails_helper'

RSpec.describe 'User Story 1' do
  context 'dishes show page' do
    before(:each) do
      @wolfgang = Chef.create!(name: 'Wolfgang Puck')
      @goat = @wolfgang.dishes.create!(name: 'Goat Cheese-Garlic Toasts', description: 'Rich flavor. Crunchy texture.')
      # @banana = gordon.dishes.create!(name: 'Frozen banana & praline parfait', description: 'Sweet and crunchy.')
      # @chicken = bobby.dishes.create!(name: 'Chicken Parmigiana', description: 'Traditional homestyle flavor.')
      # @sushi = masaharu.dishes.create!(name: 'Vegetable Sushi', description: 'Light and fresh.')
      @ingredient1 = Ingredient.create!(name: "tomoato", calories: 30)
      @ingredient3 = Ingredient.create!(name: "salt", calories: 5)
      @ingredient10 = Ingredient.create!(name: "goat", calories: 175)

      DishIngredient.create!(dish: @goat, ingredient: @ingredient1)
      DishIngredient.create!(dish: @goat, ingredient: @ingredient10)
      DishIngredient.create!(dish: @goat, ingredient: @ingredient3)
    end
    # User Story 1
    it "can see the dishes name and description" do
      visit "/dishes/#{@goat.id}"

      expect(page).to have_content(@goat.name)
      expect(page).to have_content(@goat.description)
    end

    it "can see a list of ingredients for the dish" do
      visit "/dishes/#{@goat.id}"

      expect(page).to have_content(@ingredient1.name)
      expect(page).to have_content(@ingredient3.name)
      expect(page).to have_content(@ingredient10.name)
    end
    # User Story 2
    it "can see the total calorie count for a dish" do
      visit "/dishes/#{@goat.id}"

      expect(page).to have_content(210)
    end
  end
end
