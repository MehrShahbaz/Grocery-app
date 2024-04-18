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
# PriceSerializer
class PriceSerializer < ActiveModel::Serializer
  attributes :amount, :created_at

  def amount
    object.amount.to_i
  end

  def created_at
    object.created_at.to_i
  end
end
