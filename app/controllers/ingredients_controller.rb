class IngredientsController < ApplicationController
  def index
    if params[:chef_id]
      @chef = Chef.find(params[:chef_id])
      @ingredients = @chef.all_ingredients
      # binding.pry
    end
  end
end
