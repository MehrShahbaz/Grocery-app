class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.decimal :rating, null: false
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
