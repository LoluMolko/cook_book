class LikesController < ApplicationController
  def create
    like = Like.new(recipe_id: params[:recipe_id], user: current_user)
    like.save

    redirect_to recipe_path(like.recipe)
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy

    redirect_to recipe_path(like.recipe)
  end
end
