# frozen_string_literal: true

# == Schema Information
#
# Table name: product_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  product_id  :bigint           not null
#
# Indexes
#
#  index_product_categories_on_category_id                 (category_id)
#  index_product_categories_on_product_id                  (product_id)
#  index_product_categories_on_product_id_and_category_id  (product_id,category_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (product_id => products.id)
#
# ProductCategory
class ProductCategory < ApplicationRecord
  belongs_to :product
  belongs_to :category
end
