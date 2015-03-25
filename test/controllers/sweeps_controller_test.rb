require 'test_helper'

class SweepsControllerTest < ActionController::TestCase
  setup do
    @sweep = sweeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sweeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sweep" do
    assert_difference('Sweep.count') do
      post :create, sweep: { date: @sweep.date, title: @sweep.title }
    end

    assert_redirected_to sweep_path(assigns(:sweep))
  end

  test "should show sweep" do
    get :show, id: @sweep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sweep
    assert_response :success
  end

  test "should update sweep" do
    patch :update, id: @sweep, sweep: { date: @sweep.date, title: @sweep.title }
    assert_redirected_to sweep_path(assigns(:sweep))
  end

  test "should destroy sweep" do
    assert_difference('Sweep.count', -1) do
      delete :destroy, id: @sweep
    end

    assert_redirected_to sweeps_path
  end
end
