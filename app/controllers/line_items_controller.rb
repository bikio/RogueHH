
class LineItemsController < ApplicationController

  def create
    @cart = current_cart
    @product = Product.find(params[:product_id])
    @order = Order.find(session[:order_id])

    line_item = @order.line_items.build(line_item_attributes)
    
      if line_item.save
        redirect_to root_path, notice: "#{@product.name} Added To Your Order"
      else
        redirect_to root_path, error: "We were unable to update your order."
      end

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



