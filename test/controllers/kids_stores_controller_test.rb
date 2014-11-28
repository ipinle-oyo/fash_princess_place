require 'test_helper'

class KidsStoresControllerTest < ActionController::TestCase
  setup do
    @kids_store = kids_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kids_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kids_store" do
    assert_difference('KidsStore.count') do
      post :create, kids_store: { image: @kids_store.image, item_name: @kids_store.item_name }
    end

    assert_redirected_to kids_store_path(assigns(:kids_store))
  end

  test "should show kids_store" do
    get :show, id: @kids_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kids_store
    assert_response :success
  end

  test "should update kids_store" do
    patch :update, id: @kids_store, kids_store: { image: @kids_store.image, item_name: @kids_store.item_name }
    assert_redirected_to kids_store_path(assigns(:kids_store))
  end

  test "should destroy kids_store" do
    assert_difference('KidsStore.count', -1) do
      delete :destroy, id: @kids_store
    end

    assert_redirected_to kids_stores_path
  end
end
