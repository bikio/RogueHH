class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
