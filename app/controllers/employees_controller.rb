class EmployeesController < ApplicationController
  before_action :signed_in_user
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:success] = "Employee Created!"
      redirect_to @employee
    else
      render 'new'
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
def update
    if @employee.update_attributes(employee_params)
      flash[:success] = "Employee updated"
      redirect_to @employee
    else
      render 'edit'
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :main_phone, :alternative_phone, :ssn_number, :birth_date, :email, :address, :city, :zipcode, :emergency_contact_name, :emergency_contact_phone, :former_occupation, :former_business_name, :former_employment_address, :ymen_start_date, :church, :other_children_in_household, :marital_status, :anniversary_date, :background_check_complete, :high_school_attended, :reference_name, :reference_phone_number, :w2_completed, :contract_signed, :family_notes, :other_notes)
    end
end
