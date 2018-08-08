class OrderItem < ApplicationRecord
  belongs_to :product, foreign_key: 'product_id'
  belongs_to :order,   foreign_key: 'order_id'

  validates :order_id,   presence: true
  validates :product_id, presence: true
  validates :quantity,   presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :unit_price, presence: true

  before_validation :copy_price

  validate :check_quantity_product

  def calculate_price
    self.unit_price * quantity
  end

  private

  def check_quantity_product
    errors.add(:product_quantity, "invalid product quantity") if self.product.quantity <= 0
  end

  def copy_price
    self.unit_price = self.product.price
  end
end
