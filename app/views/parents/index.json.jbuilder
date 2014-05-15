json.array!(@parents) do |parent|
  json.extract! parent, :id, :last_name, :first_name, :main_phone, :alternative_phone, :birth_date, :email, :address, :zipcode, :occupation, :business_name, :business_address, :point_of_contact, :ymen_start_date, :church, :other_children_in_household, :martial_status, :anniversary_date, :transcript_release_form, :signed_emergency_slip, :fafsa_completed, :application_complete, :high_school_attended, :college_attended, :current_parent_involvement_activities, :current_parent_involvement_hours, :family_notes, :other_notes
  json.url parent_url(parent, format: :json)
end
