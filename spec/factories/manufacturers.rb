# == Schema Information
#
# Table name: manufacturers
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  manufacturer_name  (name) UNIQUE
#
# spec/factories/manufacturers.rb

FactoryBot.define do
  factory :manufacturer do
    name { Faker::Company.name }
  end
end
