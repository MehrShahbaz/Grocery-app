class AddManufacturerReferenceToProductss < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :manufacturer, null: true, foreign_key: true
    add_reference :products, :food_mart, null: false, foreign_key: true
  end
end
