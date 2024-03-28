# frozen_string_literal: true

# Product
class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :categories, presence: true
  validates :prices, presence: true

  belongs_to :manufacturer
  belongs_to :food_mart
  has_many :prices, dependent: :destroy
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :manufacturer
  accepts_nested_attributes_for :food_mart
  accepts_nested_attributes_for :price
end
