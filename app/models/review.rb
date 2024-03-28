# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  content    :text
#  rating     :decimal(, )      not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_reviews_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
# Review
class Review < ApplicationRecord
  validates :rating, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 5 }

  belongs_to :product
end
