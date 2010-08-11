require 'test_helper'

class DividendsControllerTest < ActionController::TestCase
  setup do
    @dividend = dividends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dividends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dividend" do
    assert_difference('Dividend.count') do
      post :create, :dividend => @dividend.attributes
    end

    assert_redirected_to dividend_path(assigns(:dividend))
  end

  test "should show dividend" do
    get :show, :id => @dividend.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dividend.to_param
    assert_response :success
  end

  test "should update dividend" do
    put :update, :id => @dividend.to_param, :dividend => @dividend.attributes
    assert_redirected_to dividend_path(assigns(:dividend))
  end

  test "should destroy dividend" do
    assert_difference('Dividend.count', -1) do
      delete :destroy, :id => @dividend.to_param
    end

    assert_redirected_to dividends_path
  end
end
