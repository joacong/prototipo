require 'test_helper'

class WorkflowTemplatesControllerTest < ActionController::TestCase
  setup do
    @workflow_template = workflow_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workflow_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workflow_template" do
    assert_difference('WorkflowTemplate.count') do
      post :create, workflow_template: { name: @workflow_template.name, workflow_template_id: @workflow_template.workflow_template_id }
    end

    assert_redirected_to workflow_template_path(assigns(:workflow_template))
  end

  test "should show workflow_template" do
    get :show, id: @workflow_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workflow_template
    assert_response :success
  end

  test "should update workflow_template" do
    patch :update, id: @workflow_template, workflow_template: { name: @workflow_template.name, workflow_template_id: @workflow_template.workflow_template_id }
    assert_redirected_to workflow_template_path(assigns(:workflow_template))
  end

  test "should destroy workflow_template" do
    assert_difference('WorkflowTemplate.count', -1) do
      delete :destroy, id: @workflow_template
    end

    assert_redirected_to workflow_templates_path
  end
end
