require 'test_helper'

class SmokingsControllerTest < ActionController::TestCase
  setup do
    @smoking = smokings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smokings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smoking" do
    assert_difference('Smoking.count') do
      post :create, smoking: { latitude: @smoking.latitude, longitude: @smoking.longitude, smoke_date: @smoking.smoke_date, smoke_interval: @smoking.smoke_interval, smoke_time: @smoking.smoke_time, tobacco_id: @smoking.tobacco_id }
    end

    assert_redirected_to smoking_path(assigns(:smoking))
  end

  test "should show smoking" do
    get :show, id: @smoking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smoking
    assert_response :success
  end

  test "should update smoking" do
    patch :update, id: @smoking, smoking: { latitude: @smoking.latitude, longitude: @smoking.longitude, smoke_date: @smoking.smoke_date, smoke_interval: @smoking.smoke_interval, smoke_time: @smoking.smoke_time, tobacco_id: @smoking.tobacco_id }
    assert_redirected_to smoking_path(assigns(:smoking))
  end

  test "should destroy smoking" do
    assert_difference('Smoking.count', -1) do
      delete :destroy, id: @smoking
    end

    assert_redirected_to smokings_path
  end
end
