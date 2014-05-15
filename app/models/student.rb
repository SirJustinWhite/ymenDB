class Student < ActiveRecord::Base
	has_many :parents, :through => :parents_students
	has_many :parents_students

  def age
    now = Time.now.utc.to_date
    now.year - birth_date.year - (birth_date.to_date.change(:year => now.year) > now ? 1 : 0)
  end
  
end
