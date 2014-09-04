class AddProductIdToColors < ActiveRecord::Migration
  def change
    add_column :colors, :product_id, :integer
  end
end
