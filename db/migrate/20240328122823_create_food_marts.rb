class CreateFoodMarts < ActiveRecord::Migration[7.1]
  def change
    create_table :food_marts do |t|
      t.string :name, null: false, limit: 255
      t.string :location, null: false
      t.string :note

      t.timestamps
    end

    add_index :food_marts, :location, unique: true
  end
end
