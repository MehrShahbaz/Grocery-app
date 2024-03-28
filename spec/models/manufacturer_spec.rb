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
require 'rails_helper'

RSpec.describe Manufacturer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
