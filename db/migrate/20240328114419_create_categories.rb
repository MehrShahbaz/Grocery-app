class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, limit: 255, index: { unique: true, name: 'category_name' }

      t.timestamps
    end
  end
end
