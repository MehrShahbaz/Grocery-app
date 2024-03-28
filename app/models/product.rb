# frozen_string_literal: true

# Product
class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :manufacturer
  belongs_to :food_mart
end
