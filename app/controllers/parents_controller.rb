class ParentsController < ApplicationController
  before_action :signed_in_user
  before_action :set_parent, only: [:show, :edit, :update, :destroy]

  # GET /parents
  # GET /parents.json
  def index
    @parents = Parent.all
  end

  # GET /parents/1
  # GET /parents/1.json
  def show
  end

  # GET /parents/new
  def new
    @parent = Parent.new
  end

  # GET /parents/1/edit
  def edit
  end

  # POST /parents
  # POST /parents.json
  def create
    @parent = Parent.new(parent_params)
    if @parent.save
      flash[:success] = "Parent Created!"
      redirect_to @parent
    else
      render 'new'
    end
  end

  # PATCH/PUT /parents/1
  # PATCH/PUT /parents/1.json
  def update
    if @parent.update_attributes(parent_params)
      flash[:success] = "Parent updated"
      redirect_to @parent
    else
      render 'edit'
    end
  end

  # DELETE /parents/1
  # DELETE /parents/1.json
  def destroy
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_params
      params.require(:parent).permit(:last_name, :first_name, :main_phone, :alternative_phone, :birth_date, :email, :address, :zipcode, :occupation, :business_name, :business_address, :point_of_contact, :ymen_start_date, :church, :other_children_in_household, :martial_status, :anniversary_date, :transcript_release_form, :signed_emergency_slip, :fafsa_completed, :application_complete, :high_school_attended, :college_attended, :current_parent_involvement_activities, :current_parent_involvement_hours, :family_notes, :other_notes)
    end
end
