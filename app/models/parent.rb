class Parent < ActiveRecord::Base
	has_many :students, :through => :parents_students
	has_many :parents_students
end
