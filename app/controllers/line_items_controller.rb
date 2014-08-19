
class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only:[:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

def line_item_params
  params.require(:line_item).permit(:product_id, :quantity)
end  

def create
  product = Product.find(params[:product_id])
  @line_item = @cart.add_product(product.id)
  @line_item.quantity = params[:line_item][:quantity]


  respond_to do |format| 
    if @line_item.save
      format.html { redirect_to "/#products", notice: "Product added to cart!!" }
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

