require 'test_helper'

class TimeHorizonsControllerTest < ActionController::TestCase
  setup do
    @time_horizon = time_horizons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_horizons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create time_horizon" do
    assert_difference('TimeHorizon.count') do
      post :create, time_horizon: { year_a: @time_horizon.year_a, year_b: @time_horizon.year_b, year_c: @time_horizon.year_c, year_d: @time_horizon.year_d }
    end

    assert_redirected_to time_horizon_path(assigns(:time_horizon))
  end

  test "should show time_horizon" do
    get :show, id: @time_horizon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @time_horizon
    assert_response :success
  end

  test "should update time_horizon" do
    patch :update, id: @time_horizon, time_horizon: { year_a: @time_horizon.year_a, year_b: @time_horizon.year_b, year_c: @time_horizon.year_c, year_d: @time_horizon.year_d }
    assert_redirected_to time_horizon_path(assigns(:time_horizon))
  end

  test "should destroy time_horizon" do
    assert_difference('TimeHorizon.count', -1) do
      delete :destroy, id: @time_horizon
    end

    assert_redirected_to time_horizons_path
  end
end
