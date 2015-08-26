require 'test_helper'

class ActiveWorkflowStepsControllerTest < ActionController::TestCase
  setup do
    @active_workflow_step = active_workflow_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_workflow_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_workflow_step" do
    assert_difference('ActiveWorkflowStep.count') do
      post :create, active_workflow_step: { active_workflow_id: @active_workflow_step.active_workflow_id, number: @active_workflow_step.number, workflow_template_id: @active_workflow_step.workflow_template_id }
    end

    assert_redirected_to active_workflow_step_path(assigns(:active_workflow_step))
  end

  test "should show active_workflow_step" do
    get :show, id: @active_workflow_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @active_workflow_step
    assert_response :success
  end

  test "should update active_workflow_step" do
    patch :update, id: @active_workflow_step, active_workflow_step: { active_workflow_id: @active_workflow_step.active_workflow_id, number: @active_workflow_step.number, workflow_template_id: @active_workflow_step.workflow_template_id }
    assert_redirected_to active_workflow_step_path(assigns(:active_workflow_step))
  end

  test "should destroy active_workflow_step" do
    assert_difference('ActiveWorkflowStep.count', -1) do
      delete :destroy, id: @active_workflow_step
    end

    assert_redirected_to active_workflow_steps_path
  end
end
