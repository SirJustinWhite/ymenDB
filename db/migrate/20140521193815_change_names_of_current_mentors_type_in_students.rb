class ChangeNamesOfCurrentMentorsTypeInStudents < ActiveRecord::Migration
  def self.up
    change_column :students, :names_of_current_mentors, :text, :limit => nil
  end
 
  def self.down
    change_column :students, :names_of_current_mentors, :string
  end
end
