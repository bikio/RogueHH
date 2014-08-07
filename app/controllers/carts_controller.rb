class CartsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
# GET /carts/1
# GET /carts/1.xml 
  def show
    begin
      @cart = Cart.find(params[:id]) 
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to "/", :notice => 'Invalid cart'
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @cart }
      end 
    end
  end

  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to "/", notice: 'invalid_cart'
  end

  def destroy 
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to "/",
        notice: "Your cart is now empty" }
        format.json { head :no_content }
      end
    end

end