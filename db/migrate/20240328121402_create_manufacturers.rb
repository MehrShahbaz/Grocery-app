class CreateManufacturers < ActiveRecord::Migration[7.1]
  def change
    create_table :manufacturers do |t|
      t.string :name, null: false, limit: 255, index: { unique: true, name: 'manufacturer_name' }

      t.timestamps
    end
  end
end
