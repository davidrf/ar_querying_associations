class CreateRecipesAndComments < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :text, null: false
      t.timestamps
    end

    create_table :comments do |t|
      t.string :text, null: false
      t.integer :recipe_id, null: false
      t.timestamps
    end
  end
end
