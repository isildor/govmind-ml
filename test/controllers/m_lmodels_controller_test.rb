require 'test_helper'

class MLmodelsControllerTest < ActionController::TestCase
  setup do
    @m_lmodel = m_lmodels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_lmodels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_lmodel" do
    assert_difference('MLmodel.count') do
      post :create, m_lmodel: {  }
    end

    assert_redirected_to m_lmodel_path(assigns(:m_lmodel))
  end

  test "should show m_lmodel" do
    get :show, id: @m_lmodel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_lmodel
    assert_response :success
  end

  test "should update m_lmodel" do
    patch :update, id: @m_lmodel, m_lmodel: {  }
    assert_redirected_to m_lmodel_path(assigns(:m_lmodel))
  end

  test "should destroy m_lmodel" do
    assert_difference('MLmodel.count', -1) do
      delete :destroy, id: @m_lmodel
    end

    assert_redirected_to m_lmodels_path
  end
end
