require 'test_helper'

class ParentsStudentsControllerTest < ActionController::TestCase
  setup do
    @parents_student = parents_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parents_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parents_student" do
    assert_difference('ParentsStudent.count') do
      post :create, parents_student: { parent_id: @parents_student.parent_id, student_id: @parents_student.student_id }
    end

    assert_redirected_to parents_student_path(assigns(:parents_student))
  end

  test "should show parents_student" do
    get :show, id: @parents_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parents_student
    assert_response :success
  end

  test "should update parents_student" do
    patch :update, id: @parents_student, parents_student: { parent_id: @parents_student.parent_id, student_id: @parents_student.student_id }
    assert_redirected_to parents_student_path(assigns(:parents_student))
  end

  test "should destroy parents_student" do
    assert_difference('ParentsStudent.count', -1) do
      delete :destroy, id: @parents_student
    end

    assert_redirected_to parents_students_path
  end
end
