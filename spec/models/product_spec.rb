require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validators' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:category) }
    it { should validate_length_of(:name).is_at_least(2) }
    it { should validate_length_of(:description).is_at_least(2) }
  end

  describe 'relations' do
    it { should have_many(:orders) }
    it { should have_many(:order_items) }
  end
end