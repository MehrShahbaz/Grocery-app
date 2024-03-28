# frozen_string_literal: true

# ProductSerializer
class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :manufacturer, serializer: ManufacturerSerializer
  belongs_to :food_mart, serializer: FoodMartSerializer
  has_many :categories, serializer: CategorySerializer
end
