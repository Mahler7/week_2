class RecipesController < ApplicationController
  def meal
    @recipe = Recipe.first
  end

  def every_meal
    @recipes = Recipe.all
  end
end
