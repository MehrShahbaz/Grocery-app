FactoryBot.define do
  factory :price do
    amount { "9.99" }
    currency { "MyString" }
    product { nil }
  end
end
