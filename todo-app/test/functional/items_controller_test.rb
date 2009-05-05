require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create items" do
    assert_difference('Items.count') do
      post :create, :items => { }
    end

    assert_redirected_to items_path(assigns(:items))
  end

  test "should show items" do
    get :show, :id => items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => items(:one).to_param
    assert_response :success
  end

  test "should update items" do
    put :update, :id => items(:one).to_param, :items => { }
    assert_redirected_to items_path(assigns(:items))
  end

  test "should destroy items" do
    assert_difference('Items.count', -1) do
      delete :destroy, :id => items(:one).to_param
    end

    assert_redirected_to items_path
  end
end
