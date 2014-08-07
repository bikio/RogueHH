class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy

  def add_product(product_id)
    line_items.find_or_initialize_by(product_id: product_id).increment(:quantity)
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end


end