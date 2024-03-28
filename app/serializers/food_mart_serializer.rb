# frozen_string_literal: true

# Food Mart Serializer
class FoodMartSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
end
