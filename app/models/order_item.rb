class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :order_id,   presence: true
  validates :product_id, presence: true
  validates :quantity,   presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :unit_price, presence: true

  before_save :copy_price


  def calculate_price
    self.unit_price * quantity
  end

  private

  def copy_price
    self.unit_price = self.product.price
  end
end
