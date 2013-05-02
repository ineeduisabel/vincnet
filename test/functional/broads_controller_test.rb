require 'test_helper'

class BroadsControllerTest < ActionController::TestCase
  setup do
    @broad = broads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:broads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create broad" do
    assert_difference('Broad.count') do
      post :create, broad: { name: @broad.name }
    end

    assert_redirected_to broad_path(assigns(:broad))
  end

  test "should show broad" do
    get :show, id: @broad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @broad
    assert_response :success
  end

  test "should update broad" do
    put :update, id: @broad, broad: { name: @broad.name }
    assert_redirected_to broad_path(assigns(:broad))
  end

  test "should destroy broad" do
    assert_difference('Broad.count', -1) do
      delete :destroy, id: @broad
    end

    assert_redirected_to broads_path
  end
end
