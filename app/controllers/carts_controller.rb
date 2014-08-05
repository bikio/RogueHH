class CartsController < ApplicationController
# GET /carts/1
# GET /carts/1.xml 
  def show
    begin
      @cart = Cart.find(params[:id]) 
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, :notice => 'Invalid cart'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @cart }
      end 
    end
  end
end