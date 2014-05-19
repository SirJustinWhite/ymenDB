json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :main_phone, :alternative_phone, :ssn_number, :birth_date, :email, :address, :city, :zipcode, :emergency_contact_name, :emergency_contact_phone, :former_occupation, :former_business_name, :former_employment_address, :ymen_start_date, :church, :other_children_in_household, :marital_status, :anniversary_date, :background_check_complete, :high_school_attended, :reference_name, :reference_phone_number, :w2_completed, :contract_signed, :family_notes, :other_notes
  json.url employee_url(employee, format: :json)
end
