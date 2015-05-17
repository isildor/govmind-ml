require 'test_helper'

class MlsControllerTest < ActionController::TestCase
  setup do
    @ml = mls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ml" do
    assert_difference('Ml.count') do
      post :create, ml: { name: @ml.name }
    end

    assert_redirected_to ml_path(assigns(:ml))
  end

  test "should show ml" do
    get :show, id: @ml
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ml
    assert_response :success
  end

  test "should update ml" do
    patch :update, id: @ml, ml: { name: @ml.name }
    assert_redirected_to ml_path(assigns(:ml))
  end

  test "should destroy ml" do
    assert_difference('Ml.count', -1) do
      delete :destroy, id: @ml
    end

    assert_redirected_to mls_path
  end
end
