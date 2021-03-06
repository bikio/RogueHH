class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :image
      t.string :color
      t.integer :product_id
    end
  end
end
