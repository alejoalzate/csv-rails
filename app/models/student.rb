class Student < ActiveRecord::Base
  has_many :enrollments, :primary_key => 'user_id', :foreign_key => 'user_id'
  has_many :courses, through: :enrollments, :primary_key => 'user_id'
end
