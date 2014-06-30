class Order < ActiveRecord::Base
  has_many :line_items

  def total
    self.line_items.inject(0) { |sum, item| sum += (item.price * item.quantity) }
  end

  def empty?
    self.line_items.empty?
  end
end
