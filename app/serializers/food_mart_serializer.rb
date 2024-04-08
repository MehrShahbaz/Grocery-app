# frozen_string_literal: true

# == Schema Information
#
# Table name: food_marts
#
#  id         :bigint           not null, primary key
#  location   :string           not null
#  name       :string(255)      not null
#  note       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_food_marts_on_location  (location) UNIQUE
#
class FoodMartSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :note
end
