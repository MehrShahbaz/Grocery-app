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
  describe 'validations' do
    it { should validate_presence_of(:name) }

    context 'when name is case-insensitively not unique' do
      before { create(:manufacturer, name: 'existing_name') }

      it { should validate_uniqueness_of(:name).case_insensitive.with_message('has already been taken') }
    end
  end

  # describe 'associations' do
  #   it { should have_many(:products).dependent(:destroy) }
  # end

  # describe 'database columns' do
  #   it { should have_db_column(:id).of_type(:bigint) }
  #   it { should have_db_column(:name).of_type(:string) }
  #   it { should have_db_column(:created_at).of_type(:datetime) }
  #   it { should have_db_column(:updated_at).of_type(:datetime) }
  # end

  # describe 'indexes' do
  #   it { should have_db_index(:name).unique }
  # end

  # describe 'factory' do
  #   it 'has a valid factory' do
  #     expect(FactoryBot.build(:manufacturer)).to be_valid
  #   end
  # end
end
