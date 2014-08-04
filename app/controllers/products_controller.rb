class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    @line_item = LineItem.new
  end

  def new
  end

  def edit
  end

end
