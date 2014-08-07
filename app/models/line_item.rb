class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  def copy_product_attributes(product)
    self.name = product.name
    self.price = product.price
  end
end

