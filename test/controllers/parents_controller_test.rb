require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { address: @parent.address, alternative_phone: @parent.alternative_phone, anniversary_date: @parent.anniversary_date, application_complete: @parent.application_complete, birth_date: @parent.birth_date, business_address: @parent.business_address, business_name: @parent.business_name, church: @parent.church, college_attended: @parent.college_attended, current_parent_involvement_activities: @parent.current_parent_involvement_activities, current_parent_involvement_hours: @parent.current_parent_involvement_hours, email: @parent.email, fafsa_completed: @parent.fafsa_completed, family_notes: @parent.family_notes, first_name: @parent.first_name, high_school_attended: @parent.high_school_attended, last_name: @parent.last_name, main_phone: @parent.main_phone, martial_status: @parent.martial_status, occupation: @parent.occupation, other_children_in_household: @parent.other_children_in_household, other_notes: @parent.other_notes, point_of_contact: @parent.point_of_contact, signed_emergency_slip: @parent.signed_emergency_slip, transcript_release_form: @parent.transcript_release_form, ymen_start_date: @parent.ymen_start_date, zipcode: @parent.zipcode }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_response :success
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { address: @parent.address, alternative_phone: @parent.alternative_phone, anniversary_date: @parent.anniversary_date, application_complete: @parent.application_complete, birth_date: @parent.birth_date, business_address: @parent.business_address, business_name: @parent.business_name, church: @parent.church, college_attended: @parent.college_attended, current_parent_involvement_activities: @parent.current_parent_involvement_activities, current_parent_involvement_hours: @parent.current_parent_involvement_hours, email: @parent.email, fafsa_completed: @parent.fafsa_completed, family_notes: @parent.family_notes, first_name: @parent.first_name, high_school_attended: @parent.high_school_attended, last_name: @parent.last_name, main_phone: @parent.main_phone, martial_status: @parent.martial_status, occupation: @parent.occupation, other_children_in_household: @parent.other_children_in_household, other_notes: @parent.other_notes, point_of_contact: @parent.point_of_contact, signed_emergency_slip: @parent.signed_emergency_slip, transcript_release_form: @parent.transcript_release_form, ymen_start_date: @parent.ymen_start_date, zipcode: @parent.zipcode }
    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end
