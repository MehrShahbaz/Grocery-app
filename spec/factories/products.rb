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
#
# Foreign Keys
#
#  fk_rails_...  (food_mart_id => food_marts.id)
#  fk_rails_...  (manufacturer_id => manufacturers.id)
#
FactoryBot.define do
  factory :product do
    name { "MyString" }
  end
end
