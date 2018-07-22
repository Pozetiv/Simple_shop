class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :order_id
      t.integer :quantity, default: 1
      t.float   :unit_price

      t.timestamps
    end
    add_foreign_key :order_items, :products
    add_foreign_key :order_items, :orders
  end
end
