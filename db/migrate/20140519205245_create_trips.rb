class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :student_id
      t.text :ymen_trips
      t.integer :num_ymen_camping_trips
      t.text :camping_locations
      t.integer :num_vocational_trips
      t.text :businesses_visited
      t.integer :num_cultural_trips
      t.text :cultural_places_visited
      t.text :ymen_trips_fun_listed

      t.timestamps
    end
  end
end
