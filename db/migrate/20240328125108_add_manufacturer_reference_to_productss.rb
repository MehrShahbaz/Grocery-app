class AddManufacturerReferenceToProductss < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :manufacturer, foreign_key: true
    add_reference :products, :food_mart, foreign_key: true
  end
end
