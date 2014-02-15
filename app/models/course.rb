class Course < ActiveRecord::Base
  has_many :enrollments, :primary_key => 'course_id'
  has_many :students, through: :enrollments, :primary_key => 'course_id'
end
