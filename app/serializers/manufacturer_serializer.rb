# frozen_string_literal: true

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
# ManufacturerSerializer
class ManufacturerSerializer < ActiveModel::Serializer
  attributes :id, :name
end
