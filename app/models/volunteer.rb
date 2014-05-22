class Volunteer < ActiveRecord::Base
	validates :first_name, :last_name, :cell_phone, :home_phone, :birth_date, :email, :address,
	 :zipcode, :ymen_start_date, :background_check_completed, :application_completed, :volunteer_days,
	 :volunteer_frequency, :volunteer_hours_monthly, presence: true  

	 validates :first_name, :last_name, length: {in: 3..20}
	 validates :cell_phone, :home_phone,length: {minimum: 7}
end
