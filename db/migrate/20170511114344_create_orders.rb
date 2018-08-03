class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.string :note
      t.float :price
      t.integer :quantity
      t.integer :variant_id

      t.timestamps
    end
  end
end
