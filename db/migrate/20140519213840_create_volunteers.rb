class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :cell_phone
      t.string :home_phone
      t.date :birth_date
      t.string :email
      t.text :address
      t.string :city
      t.string :zipcode
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :occupation
      t.string :business_name
      t.string :point_of_contact
      t.date :ymen_start_date
      t.string :church
      t.string :other_children_in_household
      t.string :marital_status
      t.date :anniversary_date
      t.string :background_check_completed
      t.string :application_completed
      t.string :high_school_attended
      t.string :college_attended
      t.text :previous_volunteer_places
      t.string :reference_name
      t.string :reference_phone_number
      t.string :volunteer_days
      t.string :volunteer_frequency
      t.string :volunteer_hours_monthly
      t.text :family_notes
      t.text :other_notes

      t.timestamps
    end
  end
end
