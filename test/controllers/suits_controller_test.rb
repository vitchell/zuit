require 'test_helper'

class SuitsControllerTest < ActionController::TestCase
  setup do
    @suit = suits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suit" do
    assert_difference('Suit.count') do
      post :create, suit: { suit_image: @suit.suit_image, suit_type: @suit.suit_type }
    end

    assert_redirected_to suit_path(assigns(:suit))
  end

  test "should show suit" do
    get :show, id: @suit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suit
    assert_response :success
  end

  test "should update suit" do
    patch :update, id: @suit, suit: { suit_image: @suit.suit_image, suit_type: @suit.suit_type }
    assert_redirected_to suit_path(assigns(:suit))
  end

  test "should destroy suit" do
    assert_difference('Suit.count', -1) do
      delete :destroy, id: @suit
    end

    assert_redirected_to suits_path
  end
end
