class RemoveCategoryNameFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :category_name, :string
  end
end
