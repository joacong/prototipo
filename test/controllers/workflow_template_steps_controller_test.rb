require 'test_helper'

class WorkflowTemplateStepsControllerTest < ActionController::TestCase
  setup do
    @workflow_template_step = workflow_template_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workflow_template_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workflow_template_step" do
    assert_difference('WorkflowTemplateStep.count') do
      post :create, workflow_template_step: { workflow_template_step_id: @workflow_template_step.workflow_template_step_id }
    end

    assert_redirected_to workflow_template_step_path(assigns(:workflow_template_step))
  end

  test "should show workflow_template_step" do
    get :show, id: @workflow_template_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workflow_template_step
    assert_response :success
  end

  test "should update workflow_template_step" do
    patch :update, id: @workflow_template_step, workflow_template_step: { workflow_template_step_id: @workflow_template_step.workflow_template_step_id }
    assert_redirected_to workflow_template_step_path(assigns(:workflow_template_step))
  end

  test "should destroy workflow_template_step" do
    assert_difference('WorkflowTemplateStep.count', -1) do
      delete :destroy, id: @workflow_template_step
    end

    assert_redirected_to workflow_template_steps_path
  end
end
