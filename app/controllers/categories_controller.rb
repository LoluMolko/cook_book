class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    render json: @category.as_json
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
