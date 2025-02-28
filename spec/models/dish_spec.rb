require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end
  describe "relationships" do
    it {should belong_to :chef}
    it {should have_many :dish_ingredients}
    it { should have_many(:ingredients).through(:dish_ingredients)}
  end

  describe 'instance methods' do
    before(:each) do
      @wolfgang = Chef.create!(name: 'Wolfgang Puck')

      @goat = @wolfgang.dishes.create!(name: 'Goat Cheese-Garlic Toasts', description: 'Rich flavor. Crunchy texture.')

      @lamb = @wolfgang.dishes.create!(name: 'Marinated Rack of Lamb with Honey-Mint Vinaigrette', description: 'Sweet and savory.')

      @ingredient1 = Ingredient.create!(name: "tomoato", calories: 30)
      @ingredient3 = Ingredient.create!(name: "salt", calories: 5)
      @ingredient6 = Ingredient.create!(name: "lamb", calories: 140)
      @ingredient10 = Ingredient.create!(name: "goat", calories: 175)

      DishIngredient.create!(dish: @goat, ingredient: @ingredient1)
      DishIngredient.create!(dish: @goat, ingredient: @ingredient10)
      DishIngredient.create!(dish: @goat, ingredient: @ingredient3)

      DishIngredient.create!(dish: @lamb, ingredient: @ingredient6)
      DishIngredient.create!(dish: @lamb, ingredient: @ingredient3)
      DishIngredient.create!(dish: @lamb, ingredient: @ingredient1)
    end

    it "can get the total calorie count for a dish" do
      expect(@goat.total_calorie_count).to eq(210)
      expect(@lamb.total_calorie_count).to eq(175)
    end
  end
end
