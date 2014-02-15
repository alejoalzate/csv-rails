class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :user_id
      t.string :user_name
      t.string :state

      t.timestamps
    end
  end
end
