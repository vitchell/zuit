require 'test_helper'

class CustomizationsControllerTest < ActionController::TestCase
  setup do
    @customization = customizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customization" do
    assert_difference('Customization.count') do
      post :create, customization: { jacket_button: @customization.jacket_button, jacket_lapel: @customization.jacket_lapel, jacket_lining: @customization.jacket_lining, jacket_monogram: @customization.jacket_monogram, jacket_pocket: @customization.jacket_pocket, order_id: @customization.order_id, pant_length: @customization.pant_length, pant_type: @customization.pant_type, product_id: @customization.product_id, skirt_length: @customization.skirt_length, skirt_type: @customization.skirt_type }
    end

    assert_redirected_to customization_path(assigns(:customization))
  end

  test "should show customization" do
    get :show, id: @customization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customization
    assert_response :success
  end

  test "should update customization" do
    patch :update, id: @customization, customization: { jacket_button: @customization.jacket_button, jacket_lapel: @customization.jacket_lapel, jacket_lining: @customization.jacket_lining, jacket_monogram: @customization.jacket_monogram, jacket_pocket: @customization.jacket_pocket, order_id: @customization.order_id, pant_length: @customization.pant_length, pant_type: @customization.pant_type, product_id: @customization.product_id, skirt_length: @customization.skirt_length, skirt_type: @customization.skirt_type }
    assert_redirected_to customization_path(assigns(:customization))
  end

  test "should destroy customization" do
    assert_difference('Customization.count', -1) do
      delete :destroy, id: @customization
    end

    assert_redirected_to customizations_path
  end
end
