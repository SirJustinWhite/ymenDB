class ParentsStudentsController < ApplicationController

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

    respond_to do |format|
      if @parents_student.save
        format.html { redirect_to @parents_student, notice: 'Parents student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parents_student }
      else
        format.html { render action: 'new' }
        format.json { render json: @parents_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parents_students/1
  # PATCH/PUT /parents_students/1.json
  def update
    respond_to do |format|
      if @parents_student.update(parents_student_params)
        format.html { redirect_to @parents_student, notice: 'Parents student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parents_student.errors, status: :unprocessable_entity }
      end
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
