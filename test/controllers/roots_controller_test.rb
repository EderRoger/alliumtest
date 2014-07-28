require 'test_helper'

class RootsControllerTest < ActionController::TestCase
  setup do
    @root = roots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create root" do
    assert_difference('Root.count') do
      post :create, root: { onion_id: @root.onion_id, size: @root.size }
    end

    assert_redirected_to root_path(assigns(:root))
  end

  test "should show root" do
    get :show, id: @root
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @root
    assert_response :success
  end

  test "should update root" do
    patch :update, id: @root, root: { onion_id: @root.onion_id, size: @root.size }
    assert_redirected_to root_path(assigns(:root))
  end

  test "should destroy root" do
    assert_difference('Root.count', -1) do
      delete :destroy, id: @root
    end

    assert_redirected_to roots_path
  end
end
