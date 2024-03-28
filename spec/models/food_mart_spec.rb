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
require 'rails_helper'

RSpec.describe FoodMart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
