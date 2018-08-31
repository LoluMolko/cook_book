class IngredientsController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy]

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    render json: @ingredient.as_json
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
  end

  private

  def ingrediend_params
    params.require(:ingredient).permit(:name)
  end
end
