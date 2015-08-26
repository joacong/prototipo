require 'test_helper'

class WorflowRequestsControllerTest < ActionController::TestCase
  setup do
    @worflow_request = worflow_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:worflow_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create worflow_request" do
    assert_difference('WorflowRequest.count') do
      post :create, worflow_request: { user_id: @worflow_request.user_id }
    end

    assert_redirected_to worflow_request_path(assigns(:worflow_request))
  end

  test "should show worflow_request" do
    get :show, id: @worflow_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @worflow_request
    assert_response :success
  end

  test "should update worflow_request" do
    patch :update, id: @worflow_request, worflow_request: { user_id: @worflow_request.user_id }
    assert_redirected_to worflow_request_path(assigns(:worflow_request))
  end

  test "should destroy worflow_request" do
    assert_difference('WorflowRequest.count', -1) do
      delete :destroy, id: @worflow_request
    end

    assert_redirected_to worflow_requests_path
  end
end
