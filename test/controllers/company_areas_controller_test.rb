require 'test_helper'

class CompanyAreasControllerTest < ActionController::TestCase
  setup do
    @company_area = company_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_area" do
    assert_difference('CompanyArea.count') do
      post :create, company_area: { company_area_id: @company_area.company_area_id, name: @company_area.name }
    end

    assert_redirected_to company_area_path(assigns(:company_area))
  end

  test "should show company_area" do
    get :show, id: @company_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_area
    assert_response :success
  end

  test "should update company_area" do
    patch :update, id: @company_area, company_area: { company_area_id: @company_area.company_area_id, name: @company_area.name }
    assert_redirected_to company_area_path(assigns(:company_area))
  end

  test "should destroy company_area" do
    assert_difference('CompanyArea.count', -1) do
      delete :destroy, id: @company_area
    end

    assert_redirected_to company_areas_path
  end
end
