# frozen_string_literal: true

# == Schema Information
#
# Table name: prices
#
#  id         :bigint           not null, primary key
#  amount     :decimal(, )      not null
#  currency   :string           default("EUR")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_prices_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
# Price
class Price < ApplicationRecord
  belongs_to :product

  validates :amount, presence: true, numericality: { greater_than: 0 }
end
