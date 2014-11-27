require 'test_helper'

class WomenStoresControllerTest < ActionController::TestCase
  setup do
    @women_store = women_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:women_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create women_store" do
    assert_difference('WomenStore.count') do
      post :create, women_store: { image: @women_store.image, item_name: @women_store.item_name }
    end

    assert_redirected_to women_store_path(assigns(:women_store))
  end

  test "should show women_store" do
    get :show, id: @women_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @women_store
    assert_response :success
  end

  test "should update women_store" do
    patch :update, id: @women_store, women_store: { image: @women_store.image, item_name: @women_store.item_name }
    assert_redirected_to women_store_path(assigns(:women_store))
  end

  test "should destroy women_store" do
    assert_difference('WomenStore.count', -1) do
      delete :destroy, id: @women_store
    end

    assert_redirected_to women_stores_path
  end
end
