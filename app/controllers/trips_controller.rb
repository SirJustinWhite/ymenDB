class TripsController < ApplicationController
  before_action :signed_in_user
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)


    if @trip.save
      flash[:success] = "Trip Created for #{@trip.student.name}!"
      redirect_to @trip
    else
      render 'new'
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    if @trip.update_attributes(trip_params)
      flash[:success] = "Trip updated for #{@trip.student.name}."
      redirect_to @trip
    else
      render 'edit'
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:student_id, :ymen_trips, :num_ymen_camping_trips, :camping_locations, :num_vocational_trips, :businesses_visited, :num_cultural_trips, :cultural_places_visited, :ymen_trips_fun_listed)
    end
end
