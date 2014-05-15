class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :cell_phone
      t.string :home_phone
      t.text :address
      t.string :zipcode
      t.string :social_security_number
      t.date :birth_date
      t.string :email
      t.string :current_school
      t.string :previous_school
      t.string :grade_level
      t.string :point_of_contact
      t.date :ymen_start_date
      t.string :church
      t.string :resume_completed
      t.string :leadership_roles
      t.string :other_organizations_involved
      t.integer :num_current_mentors
      t.string :names_of_current_mentors
      t.text :family_notes
      t.text :other_notes

      t.timestamps
    end
  end
end
