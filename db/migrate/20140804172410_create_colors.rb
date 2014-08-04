class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :color
      t.string :product_id

      t.timestamps
    end
  end
end
