class Course < ActiveRecord::Base
  has_many :enrollments, :primary_key => 'course_id'
  has_many :students, through: :enrollments, :primary_key => 'course_id'

  def get_active_students
    students.where('enrollments.state' => 'active', 'students.state' => 'active')
  end
end
