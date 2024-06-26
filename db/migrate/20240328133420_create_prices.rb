class CreatePrices < ActiveRecord::Migration[7.1]
  def change
    create_table :prices do |t|
      t.decimal :amount, null: false
      t.string :currency, default: 'EUR'
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
