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
#  index_products_on_name             (name) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (food_mart_id => food_marts.id)
#  fk_rails_...  (manufacturer_id => manufacturers.id)
#
class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :prices, presence: true

  belongs_to :manufacturer, optional: true
  belongs_to :food_mart
  has_many :prices, dependent: :destroy
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  has_many :reviews, dependent: :destroy

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :manufacturer
  accepts_nested_attributes_for :food_mart
  accepts_nested_attributes_for :prices
  accepts_nested_attributes_for :reviews
end
