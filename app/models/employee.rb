class Employee < ActiveRecord::Base
	validates :first_name, :last_name, :main_phone, :alternative_phone, :birth_date, :email, :address, :city, :zipcode, :ymen_start_date, :background_check_complete,
				 :w2_completed, :contract_signed, presence: true 
	validates :first_name, :last_name,  length: {in: 3..20}
	validates :main_phone, :alternative_phone, length: {minimum: 10}
	validates :ssn_number, length: {in: 9..11}
	validates :ssn_number, uniqueness: true
end
