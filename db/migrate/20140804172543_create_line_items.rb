class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.integer :order_id
      t.string :color

      t.timestamps
    end
  end
end
