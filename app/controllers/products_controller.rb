class ProductsController < ApplicationController

  def show
    @products = Product.all
    @line_item = LineItem.new
  end
end
