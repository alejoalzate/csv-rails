class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :course_name
      t.string :state

      t.timestamps
    end
  end
end
