require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address: @employee.address, alternative_phone: @employee.alternative_phone, anniversary_date: @employee.anniversary_date, background_check_complete: @employee.background_check_complete, birth_date: @employee.birth_date, church: @employee.church, city: @employee.city, contract_signed: @employee.contract_signed, email: @employee.email, emergency_contact_name: @employee.emergency_contact_name, emergency_contact_phone: @employee.emergency_contact_phone, family_notes: @employee.family_notes, first_name: @employee.first_name, former_business_name: @employee.former_business_name, former_employment_address: @employee.former_employment_address, former_occupation: @employee.former_occupation, high_school_attended: @employee.high_school_attended, last_name: @employee.last_name, main_phone: @employee.main_phone, marital_status: @employee.marital_status, other_children_in_household: @employee.other_children_in_household, other_notes: @employee.other_notes, reference_name: @employee.reference_name, reference_phone_number: @employee.reference_phone_number, ssn_number: @employee.ssn_number, w2_completed: @employee.w2_completed, ymen_start_date: @employee.ymen_start_date, zipcode: @employee.zipcode }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { address: @employee.address, alternative_phone: @employee.alternative_phone, anniversary_date: @employee.anniversary_date, background_check_complete: @employee.background_check_complete, birth_date: @employee.birth_date, church: @employee.church, city: @employee.city, contract_signed: @employee.contract_signed, email: @employee.email, emergency_contact_name: @employee.emergency_contact_name, emergency_contact_phone: @employee.emergency_contact_phone, family_notes: @employee.family_notes, first_name: @employee.first_name, former_business_name: @employee.former_business_name, former_employment_address: @employee.former_employment_address, former_occupation: @employee.former_occupation, high_school_attended: @employee.high_school_attended, last_name: @employee.last_name, main_phone: @employee.main_phone, marital_status: @employee.marital_status, other_children_in_household: @employee.other_children_in_household, other_notes: @employee.other_notes, reference_name: @employee.reference_name, reference_phone_number: @employee.reference_phone_number, ssn_number: @employee.ssn_number, w2_completed: @employee.w2_completed, ymen_start_date: @employee.ymen_start_date, zipcode: @employee.zipcode }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
