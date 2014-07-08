class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cost
      t.integer :cooking_time
      t.integer :prepping_time
      t.text :instructions
      t.references :user, index: true
      t.text :ingredients

      t.timestamps
    end
  end
end
