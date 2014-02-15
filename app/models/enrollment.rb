class Enrollment < ActiveRecord::Base
  belongs_to :course, :primary_key => 'course_id'
  belongs_to :student, :primary_key => 'user_id', :foreign_key => 'user_id'

end
