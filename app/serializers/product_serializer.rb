# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id              :bigint           not null, primary key
#  name            :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  food_mart_id    :bigint           not null
#  manufacturer_id :bigint
#
# Indexes
#
#  index_products_on_food_mart_id     (food_mart_id)
#  index_products_on_manufacturer_id  (manufacturer_id)
#
# Foreign Keys
#
#  fk_rails_...  (food_mart_id => food_marts.id)
#  fk_rails_...  (manufacturer_id => manufacturers.id)
#
class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :count

  belongs_to :manufacturer, serializer: ManufacturerSerializer
  belongs_to :food_mart, serializer: FoodMartSerializer
  has_many :categories, serializer: CategorySerializer
  has_many :prices, serializer: PriceSerializer
  has_many :reviews, serializer: ReviewSerializer

  def count
    Product.count
  end
end
