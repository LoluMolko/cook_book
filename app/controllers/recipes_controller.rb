class RecipesController < ApplicationController
  before_action :authenticate_user!, only: %i[create update edit destroy]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all
  end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end
 
  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :difficulty_level, :description, :image, :category_id)
  end
end
