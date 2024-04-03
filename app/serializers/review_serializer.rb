# frozen_string_literal: true

# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  content    :text
#  rating     :decimal(, )      not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_reviews_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
# ReviewSerializer
class ReviewSerializer < ActiveModel::Serializer
  attributes :content, :rating, :title

  def rating
    object.rating.to_i
  end
end
