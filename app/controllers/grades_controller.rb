class GradesController < ApplicationController
  before_action :signed_in_user
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  # GET /grades
  # GET /grades.json
  def index
    @grades = Grade.all
  end

  # GET /grades/1
  # GET /grades/1.json
  def show
  end

  # GET /grades/new
  def new
    @grade = Grade.new
  end

  # GET /grades/1/edit
  def edit
  end

  # POST /grades
  # POST /grades.json
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      flash[:success] = "Grade Created for #{@grade.student.name}!"
      redirect_to @grade
    else
      render 'new'
    end
  end

  # PATCH/PUT /grades/1
  # PATCH/PUT /grades/1.json
  def update
    if @grade.update_attributes(grade_params)
      flash[:success] = "Grade updated for #{@grade.student.name}."
      redirect_to @grade
    else
      render 'edit'
    end
  end

  # DELETE /grades/1
  # DELETE /grades/1.json
  def destroy
    @grade.destroy
    respond_to do |format|
      format.html { redirect_to grades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_params
      params.require(:grade).permit(:student_id, :cumulative_gpa, :previous_year_gpa, :previous_year_absences, :current_q1_absences, :current_q2_absences, :current_q3_absences, :current_q4_absences, :current_q1_grades, :current_q2_grades, :current_q3_grades, :current_q4_grades, :student_promoted, :class_rank, :colleges_considered, :application_complete, :num_college_trips)
    end
end
