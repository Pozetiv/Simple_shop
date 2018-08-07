class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :city
      t.text     :address
      t.text     :options
      t.integer  :order_id

      t.timestamps
    end
    add_foreign_key :addresses, :orders
  end
end
