class AddCartIdToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :cart_id, :integer
  end
end
