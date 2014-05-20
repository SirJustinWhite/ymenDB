class Student < ActiveRecord::Base
	has_many :parents, :through => :parents_students, dependent: :destroy
	has_many :parents_students
	has_many :grades, dependent: :destroy
  has_many :trips, dependent: :destroy
  has_many :projects, dependent: :destroy

  def age
    now = Time.now.utc.to_date
    now.year - birth_date.year - (birth_date.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def name
    @name = first_name + " " + last_name
  end


  
end
