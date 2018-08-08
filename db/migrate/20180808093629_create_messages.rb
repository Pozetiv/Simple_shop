class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text   :msg_body
      t.string :name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
