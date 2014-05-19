class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :main_phone
      t.string :alternative_phone
      t.integer :ssn_number
      t.date :birth_date
      t.string :email
      t.text :address
      t.string :city
      t.string :zipcode
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :former_occupation
      t.string :former_business_name
      t.text :former_employment_address
      t.date :ymen_start_date
      t.string :church
      t.string :other_children_in_household
      t.string :marital_status
      t.date :anniversary_date
      t.string :background_check_complete
      t.string :high_school_attended
      t.string :reference_name
      t.string :reference_phone_number
      t.string :w2_completed
      t.string :contract_signed
      t.text :family_notes
      t.text :other_notes

      t.timestamps
    end
  end
end
