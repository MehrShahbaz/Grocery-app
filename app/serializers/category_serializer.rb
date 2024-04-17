# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  category_name  (name) UNIQUE
#
class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :count

  def count
    object.products.count
  end
end
