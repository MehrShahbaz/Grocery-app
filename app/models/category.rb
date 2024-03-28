# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  category_name  (name) UNIQUE
#
# Category
class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
end
