class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :student_id
      t.string :project_name
      t.string :project_year
      t.string :project_hours

      t.timestamps
    end
  end
end
