require 'test_helper'

class GradesControllerTest < ActionController::TestCase
  setup do
    @grade = grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grade" do
    assert_difference('Grade.count') do
      post :create, grade: { application_complete: @grade.application_complete, class_rank: @grade.class_rank, colleges_considered: @grade.colleges_considered, cumulative_gpa: @grade.cumulative_gpa, current_q1_absences: @grade.current_q1_absences, current_q1_grades: @grade.current_q1_grades, current_q2_absences: @grade.current_q2_absences, current_q2_grades: @grade.current_q2_grades, current_q3_absences: @grade.current_q3_absences, current_q3_grades: @grade.current_q3_grades, current_q4_absences: @grade.current_q4_absences, current_q4_grades: @grade.current_q4_grades, num_college_trips: @grade.num_college_trips, previous_year_absences: @grade.previous_year_absences, previous_year_gpa: @grade.previous_year_gpa, student_id: @grade.student_id, student_promoted: @grade.student_promoted }
    end

    assert_redirected_to grade_path(assigns(:grade))
  end

  test "should show grade" do
    get :show, id: @grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grade
    assert_response :success
  end

  test "should update grade" do
    patch :update, id: @grade, grade: { application_complete: @grade.application_complete, class_rank: @grade.class_rank, colleges_considered: @grade.colleges_considered, cumulative_gpa: @grade.cumulative_gpa, current_q1_absences: @grade.current_q1_absences, current_q1_grades: @grade.current_q1_grades, current_q2_absences: @grade.current_q2_absences, current_q2_grades: @grade.current_q2_grades, current_q3_absences: @grade.current_q3_absences, current_q3_grades: @grade.current_q3_grades, current_q4_absences: @grade.current_q4_absences, current_q4_grades: @grade.current_q4_grades, num_college_trips: @grade.num_college_trips, previous_year_absences: @grade.previous_year_absences, previous_year_gpa: @grade.previous_year_gpa, student_id: @grade.student_id, student_promoted: @grade.student_promoted }
    assert_redirected_to grade_path(assigns(:grade))
  end

  test "should destroy grade" do
    assert_difference('Grade.count', -1) do
      delete :destroy, id: @grade
    end

    assert_redirected_to grades_path
  end
end
