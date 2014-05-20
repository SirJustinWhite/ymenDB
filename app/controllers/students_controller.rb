class StudentsController < ApplicationController
  before_action :signed_in_user
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @q = Student.search(params[:q])
    @students = @q.result.page(params[:page])
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student Created!"
      redirect_to @student
    else
      render 'new'
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    if @student.update_attributes(student_params)
      flash[:success] = "Student updated"
      redirect_to @student
    else
      render 'edit'
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :last_name, :cell_phone, :home_phone, :address, :zipcode, :social_security_number, :birth_date, :email, :current_school, :previous_school, :grade_level, :point_of_contact, :ymen_start_date, :church, :resume_completed, :leadership_roles, :other_organizations_involved, :num_current_mentors, :names_of_current_mentors, :family_notes, :other_notes)
    end
end
