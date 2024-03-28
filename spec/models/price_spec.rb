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
require 'rails_helper'

RSpec.describe Price, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
