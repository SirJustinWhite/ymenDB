json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :first_name, :last_name, :cell_phone, :home_phone, :birth_date, :email, :address, :city, :zipcode, :emergency_contact_name, :emergency_contact_phone, :occupation, :business_name, :point_of_contact, :ymen_start_date, :church, :other_children_in_household, :marital_status, :anniversary_date, :background_check_completed, :application_completed, :high_school_attended, :college_attended, :previous_volunteer_places, :reference_name, :reference_phone_number, :volunteer_days, :volunteer_frequency, :volunteer_hours_monthly, :family_notes, :other_notes
  json.url volunteer_url(volunteer, format: :json)
end
