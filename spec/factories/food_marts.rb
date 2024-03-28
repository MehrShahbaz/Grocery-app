# == Schema Information
#
# Table name: food_marts
#
#  id         :bigint           not null, primary key
#  location   :string           not null
#  name       :string(255)      not null
#  note       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_food_marts_on_location  (location) UNIQUE
#
FactoryBot.define do
  factory :food_mart do
    name { "MyString" }
    location { "MyString" }
  end
end
