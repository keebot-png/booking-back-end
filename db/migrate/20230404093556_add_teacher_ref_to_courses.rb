class AddTeacherRefToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :teacher, null: false, foreign_key: true
  end
end
