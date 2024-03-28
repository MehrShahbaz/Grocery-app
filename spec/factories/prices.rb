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
FactoryBot.define do
  factory :price do
    amount { "9.99" }
    currency { "MyString" }
    product { nil }
  end
end
