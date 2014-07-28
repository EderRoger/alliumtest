require 'test_helper'

class OnionsControllerTest < ActionController::TestCase
  setup do
    @onion = onions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create onion" do
    assert_difference('Onion.count') do
      post :create, onion: { analisys_id: @onion.analisys_id, description: @onion.description }
    end

    assert_redirected_to onion_path(assigns(:onion))
  end

  test "should show onion" do
    get :show, id: @onion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @onion
    assert_response :success
  end

  test "should update onion" do
    patch :update, id: @onion, onion: { analisys_id: @onion.analisys_id, description: @onion.description }
    assert_redirected_to onion_path(assigns(:onion))
  end

  test "should destroy onion" do
    assert_difference('Onion.count', -1) do
      delete :destroy, id: @onion
    end

    assert_redirected_to onions_path
  end
end
