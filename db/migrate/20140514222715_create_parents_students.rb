class CreateParentsStudents < ActiveRecord::Migration
  def change
    create_table :parents_students do |t|
      t.integer :parent_id
      t.integer :student_id

      t.timestamps
    end
  end
end
