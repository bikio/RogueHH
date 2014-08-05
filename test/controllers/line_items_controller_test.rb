require 'test_helper'

class LineItemsControllerTest < ActionController::TestCase
  test "should create line_item" do 
    assert_difference('LineItem.count') do
      post :create, :product_id => products(:ruby).id
    end

    assert_redirected_to cart_path(assigns(:line_item).cart)
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
