class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy

  def add_product(product_id)
    line_items.find_or_initialize_by(product_id: product_id).increment(:quantity)
  end
end