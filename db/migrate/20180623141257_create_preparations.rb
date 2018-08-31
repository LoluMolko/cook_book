class CreatePreparations < ActiveRecord::Migration[5.2]
  def change
    create_table :preparations do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
