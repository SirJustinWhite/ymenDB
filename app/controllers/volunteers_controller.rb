class VolunteersController < ApplicationController
  before_action :signed_in_user
  before_action :set_volunteer, only: [:show, :edit, :update, :destroy]

  # GET /volunteers
  # GET /volunteers.json
  def index
    @volunteers = Volunteer.all
  end

  # GET /volunteers/1
  # GET /volunteers/1.json
  def show
  end

  # GET /volunteers/new
  def new
    @volunteer = Volunteer.new
  end

  # GET /volunteers/1/edit
  def edit
  end

  # POST /volunteers
  # POST /volunteers.json
  def create
    @volunteer = Volunteer.new(volunteer_params)

    if @volunteer.save
      flash[:success] = "Volunteer Created!"
      redirect_to @volunteer
    else
      render 'new'
    end
  end

  # PATCH/PUT /volunteers/1
  # PATCH/PUT /volunteers/1.json
  def update
    if @volunteer.update_attributes(volunteer_params)
      flash[:success] = "Volunteer updated"
      redirect_to @volunteer
    else
      render 'edit'
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.json
  def destroy
    @volunteer.destroy
    respond_to do |format|
      format.html { redirect_to volunteers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def volunteer_params
      params.require(:volunteer).permit(:first_name, :last_name, :cell_phone, :home_phone, :birth_date, :email, :address, :city, :zipcode, :emergency_contact_name, :emergency_contact_phone, :occupation, :business_name, :point_of_contact, :ymen_start_date, :church, :other_children_in_household, :marital_status, :anniversary_date, :background_check_completed, :application_completed, :high_school_attended, :college_attended, :previous_volunteer_places, :reference_name, :reference_phone_number, :volunteer_days, :volunteer_frequency, :volunteer_hours_monthly, :family_notes, :other_notes)
    end
end
