require 'test_helper'

class ActiveWorkflowsControllerTest < ActionController::TestCase
  setup do
    @active_workflow = active_workflows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_workflows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_workflow" do
    assert_difference('ActiveWorkflow.count') do
      post :create, active_workflow: { name: @active_workflow.name }
    end

    assert_redirected_to active_workflow_path(assigns(:active_workflow))
  end

  test "should show active_workflow" do
    get :show, id: @active_workflow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_workflow
    assert_response :success
  end

  test "should update active_workflow" do
    patch :update, id: @active_workflow, active_workflow: { name: @active_workflow.name }
    assert_redirected_to active_workflow_path(assigns(:active_workflow))
  end

  test "should destroy active_workflow" do
    assert_difference('ActiveWorkflow.count', -1) do
      delete :destroy, id: @active_workflow
    end

    assert_redirected_to active_workflows_path
  end
end
