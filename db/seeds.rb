# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

categories = [
  "Dairy",
  "Produce",
  "Meat",
  "Seafood",
  "Bakery",
  "Grains",
  "Canned Goods",
  "Frozen Foods",
  "Snacks",
  "Beverages",
  "Condiments",
  "Sauces",
  "Sweets",
  "Spices",
  "Herbs",
  "Ready-to-Eat Meals",
  "Breakfast Foods",
  "Ethnic Foods",
  "Organic Foods",
  "Gluten-Free Foods",
  "Desserts",
  "Sauces & Dressings",
  "Pasta",
  "Noodles",
  "Vegetarian Foods",
  "Vegan Foods",
  "Natural Foods",
  "Prepared Foods",
  "Convenience Foods",
  "Healthy Snacks",
  "Low-Carb Foods",
  "Low-Fat Foods",
  "Low-Sodium Foods",
  "Low-Sugar Foods",
  "Gourmet Foods",
  "Specialty Foods",
  "International Foods",
  "Regional Foods",
  "Local Foods",
  "Artisanal Foods",
  "Functional Foods",
  "Superfoods",
  "Farm-Fresh Foods",
  "Homemade Foods",
  "Quick Meals",
  "Family Meals",
  "Bulk Foods",
  "Wholesome Foods",
  "Wellness Foods",
  "Plant-Based Foods",
  "Artificial-Free Foods",
  "All-Natural Foods"
]

# Create categories
puts 'Creating Categories'
categories.each do |category_name|
  Category.create(name: category_name)
  print '.'
end

puts ''

food_marts = [
    {name: 'Lidl', location: 'https://maps.app.goo.gl/XP5gwpUh2Ymxz7KM7', note: 'Berliner Straße'},
    {name: 'Chawla store', location: 'https://maps.app.goo.gl/QcWT7KTZDmvh3uzn7', note: 'Berliner Straße'},
    {name: 'Rewe', location: 'https://maps.app.goo.gl/AGt2oE8fXZpQwcQR7', note: 'Near Pak Masjid'},
    {name: 'Punjab Store', location: 'https://maps.app.goo.gl/GhYhDFgwV7NJ1EJF6', note: 'Osloer Str.'},
    {name: 'Euro Store', location: 'https://maps.app.goo.gl/XTgJkbU9pzMR4A6Q7', note: 'Berliner Straße'},
    {name: 'EDEKA', location: 'https://maps.app.goo.gl/2snFtJMS7jAvZwC47', note: 'Berliner Straße'},
    {name: 'EDEKA', location: 'https://maps.app.goo.gl/ETwjBHCVcCwDEZnf9', note: 'Prager Platz'},
    {name: 'ALDI Nord', location: 'https://maps.app.goo.gl/X5edHstTdobvbHjb8', note: 'Prager Platz'},
    {name: 'Woolworth', location: 'https://maps.app.goo.gl/33NE71GHaNiLVacu8', note: 'Potsdamer Str. 120, 10785 Berlin'},
]

puts 'Creating Food Marts'
food_marts.each do |food_mart|
    FoodMart.create(name: food_mart[:name], location: food_mart[:location], note: food_mart[:note])
    print '.'
end

puts ''

puts 'Creating Products'
(1..1000).each do |number|
  category = (0..rand(7)).map do |x| rand(1..51) end.uniq
  prices = (0..rand(7)).map do |x| {amount: rand(1..10)} end
  reviews = (0..rand(10)).map do |x| {content: "Content #{x}", rating: rand(1..5)} end
  Product.create!(
    name: "Product #{number}", prices_attributes: prices, food_mart_id: rand(1..9), category_ids: category,
  reviews_attributes: reviews
  )
  print '.'
end