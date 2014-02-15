class ImportCsv
  require 'csv'
  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      hash_row = row.to_hash 
      if hash_row.has_key?('user_id')
        if hash_row.has_key?('course_id')
          enrollment = Enrollment.where(user_id: hash_row['user_id'], course_id: hash_row['course_id']).first || Enrollment.new
          enrollment.attributes = hash_row 
          enrollment.save
        else
          student = Student.find_by_user_id(hash_row['user_id']) || Student.new
          student.attributes = hash_row
          student.save
        end
      elsif hash_row.has_key? 'course_id' 
        course = Course.find_by_course_id(hash_row['course_id']) || Course.new
        course.attributes = hash_row
        course.save
      end
    end
  end
end
