class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :calories
      t.integer :serving_size_grams
      t.belongs_to :sushi, foreign_key: true

      t.timestamps
    end
  end
end
