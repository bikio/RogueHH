
class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only:[:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]


def create
  product = Product.find(params[:product_id])
  @line_item = @cart.add_product(product.id)

  respond_to do |format| 
    if @line_item.save
      format.html { redirect_to(@line_item.cart,
        :notice => 'Line item was successfully created.') }
      format.xml  { render :xml => @line_item,
        :status => :created, :location => @line_item }
    else
      format.html { render :action => "new" } 
      format.xml { render :xml => @line_item.errors,
        :status => :unprocessable_entity }
      end
    end
  end
end

