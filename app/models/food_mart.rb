# frozen_string_literal: true

# FoodMart
class FoodMart < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true, uniqueness: true
end
