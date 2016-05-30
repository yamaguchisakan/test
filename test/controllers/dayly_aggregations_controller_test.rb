require 'test_helper'

class DaylyAggregationsControllerTest < ActionController::TestCase
  setup do
    @dayly_aggregation = dayly_aggregations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dayly_aggregations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dayly_aggregation" do
    assert_difference('DaylyAggregation.count') do
      post :create, dayly_aggregation: { account_id: @dayly_aggregation.account_id, aggregation_day: @dayly_aggregation.aggregation_day, avg_interval: @dayly_aggregation.avg_interval, avg_number: @dayly_aggregation.avg_number, avg_price: @dayly_aggregation.avg_price }
    end

    assert_redirected_to dayly_aggregation_path(assigns(:dayly_aggregation))
  end

  test "should show dayly_aggregation" do
    get :show, id: @dayly_aggregation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dayly_aggregation
    assert_response :success
  end

  test "should update dayly_aggregation" do
    patch :update, id: @dayly_aggregation, dayly_aggregation: { account_id: @dayly_aggregation.account_id, aggregation_day: @dayly_aggregation.aggregation_day, avg_interval: @dayly_aggregation.avg_interval, avg_number: @dayly_aggregation.avg_number, avg_price: @dayly_aggregation.avg_price }
    assert_redirected_to dayly_aggregation_path(assigns(:dayly_aggregation))
  end

  test "should destroy dayly_aggregation" do
    assert_difference('DaylyAggregation.count', -1) do
      delete :destroy, id: @dayly_aggregation
    end

    assert_redirected_to dayly_aggregations_path
  end
end
