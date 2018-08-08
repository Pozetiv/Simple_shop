class Order < ApplicationRecord
  has_many :order_items, validate: true
  has_many :products, through: :order_items
#  belongs_to :user

  has_one :address

  def add_product(product)
    current_order_items = order_items.find_by(product_id: product[:product_id])
     if current_order_items
       current_order_items.quantity += product[:quantity].to_i
       current_order_items.save
     else
       create_order_items = order_items.create(product_id: product[:product_id], quantity: product[:quantity],
                                               order_id: self.id)
     end
  end

  ##TODO minus_product_buy

end
