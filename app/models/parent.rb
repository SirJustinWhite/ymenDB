class Parent < ActiveRecord::Base
	has_many :students, :through => :parents_students, dependent: :destroy
	has_many :parents_students

  def age
    now = Time.now.utc.to_date
    now.year - birth_date.year - (birth_date.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def name
    @name = first_name + " " + last_name
  end
  
end
