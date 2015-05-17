require 'test_helper'

class MachineLearningsControllerTest < ActionController::TestCase
  setup do
    @machine_learning = machine_learnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_learnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create machine_learning" do
    assert_difference('MachineLearning.count') do
      post :create, machine_learning: { name: @machine_learning.name }
    end

    assert_redirected_to machine_learning_path(assigns(:machine_learning))
  end

  test "should show machine_learning" do
    get :show, id: @machine_learning
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @machine_learning
    assert_response :success
  end

  test "should update machine_learning" do
    patch :update, id: @machine_learning, machine_learning: { name: @machine_learning.name }
    assert_redirected_to machine_learning_path(assigns(:machine_learning))
  end

  test "should destroy machine_learning" do
    assert_difference('MachineLearning.count', -1) do
      delete :destroy, id: @machine_learning
    end

    assert_redirected_to machine_learnings_path
  end
end
