require 'test_helper'

class VolunteersControllerTest < ActionController::TestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post :create, volunteer: { address: @volunteer.address, anniversary_date: @volunteer.anniversary_date, application_completed: @volunteer.application_completed, background_check_completed: @volunteer.background_check_completed, birth_date: @volunteer.birth_date, business_name: @volunteer.business_name, cell_phone: @volunteer.cell_phone, church: @volunteer.church, city: @volunteer.city, college_attended: @volunteer.college_attended, email: @volunteer.email, emergency_contact_name: @volunteer.emergency_contact_name, emergency_contact_phone: @volunteer.emergency_contact_phone, family_notes: @volunteer.family_notes, first_name: @volunteer.first_name, high_school_attended: @volunteer.high_school_attended, home_phone: @volunteer.home_phone, last_name: @volunteer.last_name, marital_status: @volunteer.marital_status, occupation: @volunteer.occupation, other_children_in_household: @volunteer.other_children_in_household, other_notes: @volunteer.other_notes, point_of_contact: @volunteer.point_of_contact, previous_volunteer_places: @volunteer.previous_volunteer_places, reference_name: @volunteer.reference_name, reference_phone_number: @volunteer.reference_phone_number, volunteer_days: @volunteer.volunteer_days, volunteer_frequency: @volunteer.volunteer_frequency, volunteer_hours_monthly: @volunteer.volunteer_hours_monthly, ymen_start_date: @volunteer.ymen_start_date, zipcode: @volunteer.zipcode }
    end

    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should show volunteer" do
    get :show, id: @volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer
    assert_response :success
  end

  test "should update volunteer" do
    patch :update, id: @volunteer, volunteer: { address: @volunteer.address, anniversary_date: @volunteer.anniversary_date, application_completed: @volunteer.application_completed, background_check_completed: @volunteer.background_check_completed, birth_date: @volunteer.birth_date, business_name: @volunteer.business_name, cell_phone: @volunteer.cell_phone, church: @volunteer.church, city: @volunteer.city, college_attended: @volunteer.college_attended, email: @volunteer.email, emergency_contact_name: @volunteer.emergency_contact_name, emergency_contact_phone: @volunteer.emergency_contact_phone, family_notes: @volunteer.family_notes, first_name: @volunteer.first_name, high_school_attended: @volunteer.high_school_attended, home_phone: @volunteer.home_phone, last_name: @volunteer.last_name, marital_status: @volunteer.marital_status, occupation: @volunteer.occupation, other_children_in_household: @volunteer.other_children_in_household, other_notes: @volunteer.other_notes, point_of_contact: @volunteer.point_of_contact, previous_volunteer_places: @volunteer.previous_volunteer_places, reference_name: @volunteer.reference_name, reference_phone_number: @volunteer.reference_phone_number, volunteer_days: @volunteer.volunteer_days, volunteer_frequency: @volunteer.volunteer_frequency, volunteer_hours_monthly: @volunteer.volunteer_hours_monthly, ymen_start_date: @volunteer.ymen_start_date, zipcode: @volunteer.zipcode }
    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete :destroy, id: @volunteer
    end

    assert_redirected_to volunteers_path
  end
end
