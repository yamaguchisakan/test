require 'test_helper'

class TobaccosControllerTest < ActionController::TestCase
  setup do
    @tobacco = tobaccos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tobaccos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tobacco" do
    assert_difference('Tobacco.count') do
      post :create, tobacco: { account_id: @tobacco.account_id, brand_id: @tobacco.brand_id }
    end

    assert_redirected_to tobacco_path(assigns(:tobacco))
  end

  test "should show tobacco" do
    get :show, id: @tobacco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tobacco
    assert_response :success
  end

  test "should update tobacco" do
    patch :update, id: @tobacco, tobacco: { account_id: @tobacco.account_id, brand_id: @tobacco.brand_id }
    assert_redirected_to tobacco_path(assigns(:tobacco))
  end

  test "should destroy tobacco" do
    assert_difference('Tobacco.count', -1) do
      delete :destroy, id: @tobacco
    end

    assert_redirected_to tobaccos_path
  end
end
