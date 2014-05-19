require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post :create, trip: { businesses_visited: @trip.businesses_visited, camping_locations: @trip.camping_locations, cultural_places_visited: @trip.cultural_places_visited, num_cultural_trips: @trip.num_cultural_trips, num_vocational_trips: @trip.num_vocational_trips, num_ymen_camping_trips: @trip.num_ymen_camping_trips, student_id: @trip.student_id, ymen_trips: @trip.ymen_trips, ymen_trips_fun_listed: @trip.ymen_trips_fun_listed }
    end

    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    patch :update, id: @trip, trip: { businesses_visited: @trip.businesses_visited, camping_locations: @trip.camping_locations, cultural_places_visited: @trip.cultural_places_visited, num_cultural_trips: @trip.num_cultural_trips, num_vocational_trips: @trip.num_vocational_trips, num_ymen_camping_trips: @trip.num_ymen_camping_trips, student_id: @trip.student_id, ymen_trips: @trip.ymen_trips, ymen_trips_fun_listed: @trip.ymen_trips_fun_listed }
    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete :destroy, id: @trip
    end

    assert_redirected_to trips_path
  end
end
