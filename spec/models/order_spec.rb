require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'relations' do
    it { should have_many(:products) }
    it { should have_many(:order_items) }
    it { should have_one(:address) }
  end

  describe "#add_product" do
    ##TODO test method
  end
end