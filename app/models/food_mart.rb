# frozen_string_literal: true

# FoodMart
class FoodMart < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true, uniqueness: true

  has_one :product, dependent: :destroy
end
