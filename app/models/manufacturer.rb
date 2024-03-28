# frozen_string_literal: true

# Manufacturer
class Manufacturer < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
