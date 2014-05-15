class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :last_name
      t.string :first_name
      t.string :main_phone
      t.string :alternative_phone
      t.date :birth_date
      t.string :email
      t.text :address
      t.string :zipcode
      t.string :occupation
      t.string :business_name
      t.text :business_address
      t.string :point_of_contact
      t.date :ymen_start_date
      t.string :church
      t.string :other_children_in_household
      t.string :martial_status
      t.date :anniversary_date
      t.string :transcript_release_form
      t.string :signed_emergency_slip
      t.string :fafsa_completed
      t.string :application_complete
      t.string :high_school_attended
      t.string :college_attended
      t.string :current_parent_involvement_activities
      t.integer :current_parent_involvement_hours
      t.text :family_notes
      t.text :other_notes

      t.timestamps
    end
  end
end
