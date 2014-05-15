require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { address: @student.address, birth_date: @student.birth_date, cell_phone: @student.cell_phone, church: @student.church, current_school: @student.current_school, email: @student.email, family_notes: @student.family_notes, first_name: @student.first_name, grade_level: @student.grade_level, home_phone: @student.home_phone, last_name: @student.last_name, leadership_roles: @student.leadership_roles, names_of_current_mentors: @student.names_of_current_mentors, num_current_mentors: @student.num_current_mentors, other_notes: @student.other_notes, other_organizations_involved: @student.other_organizations_involved, point_of_contact: @student.point_of_contact, previous_school: @student.previous_school, resume_completed: @student.resume_completed, social_security_number: @student.social_security_number, ymen_start_date: @student.ymen_start_date, zipcode: @student.zipcode }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { address: @student.address, birth_date: @student.birth_date, cell_phone: @student.cell_phone, church: @student.church, current_school: @student.current_school, email: @student.email, family_notes: @student.family_notes, first_name: @student.first_name, grade_level: @student.grade_level, home_phone: @student.home_phone, last_name: @student.last_name, leadership_roles: @student.leadership_roles, names_of_current_mentors: @student.names_of_current_mentors, num_current_mentors: @student.num_current_mentors, other_notes: @student.other_notes, other_organizations_involved: @student.other_organizations_involved, point_of_contact: @student.point_of_contact, previous_school: @student.previous_school, resume_completed: @student.resume_completed, social_security_number: @student.social_security_number, ymen_start_date: @student.ymen_start_date, zipcode: @student.zipcode }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
