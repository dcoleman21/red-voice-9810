require 'rails_helper'

RSpec.describe Chef, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
  end

  describe "relationships" do
    it {should have_many :dishes}
    it {should have_many(:dish_ingredients).through(:dishes)}
    it {should have_many(:ingredients).through(:dish_ingredients)}
  end

  describe 'instance methods' do
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
    end

    it "can get all ingredients for all that chef's dishes" do
      expect(@wolfgang.all_ingredients).to eq([@ingredient1,@ingredient3,@ingredient6,@ingredient10,@ingredient11])
    end
  end
end
