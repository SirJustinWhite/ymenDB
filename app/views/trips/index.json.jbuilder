json.array!(@trips) do |trip|
  json.extract! trip, :id, :student_id, :ymen_trips, :num_ymen_camping_trips, :camping_locations, :num_vocational_trips, :businesses_visited, :num_cultural_trips, :cultural_places_visited, :ymen_trips_fun_listed
  json.url trip_url(trip, format: :json)
end
