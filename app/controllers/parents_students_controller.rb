class ParentsStudentsController < ApplicationController
  before_action :signed_in_user
  before_action :set_parents_student, only: [:show, :edit, :update, :destroy]

  # GET /parents_students
  # GET /parents_students.json
  def index
    @parents_students = ParentsStudent.all
  end

  # GET /parents_students/1
  # GET /parents_students/1.json
  def show
  end

  # GET /parents_students/new
  def new
    @parents_student = ParentsStudent.new
  end

  # GET /parents_students/1/edit
  def edit
  end

  # POST /parents_students
  # POST /parents_students.json
  def create
    @parents_student = ParentsStudent.new(parents_student_params)

    if @parents_student.save
      flash[:success] = "New Family Relationship Created!"
      redirect_to @parents_student
    else
      render 'new'
    end
  end

  # PATCH/PUT /parents_students/1
  # PATCH/PUT /parents_students/1.json
  def update
    if @parents_student.update_attributes(parents_student_params)
      flash[:success] = "Family Relationship updated."
      redirect_to @parents_student
    else
      render 'edit'
    end
  end

  # DELETE /parents_students/1
  # DELETE /parents_students/1.json
  def destroy
    @parents_student.destroy
    respond_to do |format|
      format.html { redirect_to parents_students_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parents_student
      @parents_student = ParentsStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parents_student_params
      params.require(:parents_student).permit(:parent_id, :student_id)
    end
end
