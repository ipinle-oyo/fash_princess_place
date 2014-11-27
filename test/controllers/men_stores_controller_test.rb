require 'test_helper'

class MenStoresControllerTest < ActionController::TestCase
  setup do
    @men_store = men_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:men_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create men_store" do
    assert_difference('MenStore.count') do
      post :create, men_store: {  }
    end

    assert_redirected_to men_store_path(assigns(:men_store))
  end

  test "should show men_store" do
    get :show, id: @men_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @men_store
    assert_response :success
  end

  test "should update men_store" do
    patch :update, id: @men_store, men_store: {  }
    assert_redirected_to men_store_path(assigns(:men_store))
  end

  test "should destroy men_store" do
    assert_difference('MenStore.count', -1) do
      delete :destroy, id: @men_store
    end

    assert_redirected_to men_stores_path
  end
end
