class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.float :cumulative_gpa
      t.float :previous_year_gpa
      t.float :previous_year_absences
      t.integer :current_q1_absences
      t.integer :current_q2_absences
      t.integer :current_q3_absences
      t.integer :current_q4_absences
      t.string :current_q1_grades
      t.string :current_q2_grades
      t.string :current_q3_grades
      t.string :current_q4_grades
      t.string :student_promoted
      t.string :class_rank
      t.text :colleges_considered
      t.string :application_complete
      t.integer :num_college_trips

      t.timestamps
    end
  end
end
