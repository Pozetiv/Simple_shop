class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image
      t.integer :product_id

      t.timestamps
    end
     remove_column :products, :image
     add_foreign_key :images, :products
  end
end
