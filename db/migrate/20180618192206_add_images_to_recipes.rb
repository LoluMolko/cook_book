class AddImagesToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :image, :json
  end
end
