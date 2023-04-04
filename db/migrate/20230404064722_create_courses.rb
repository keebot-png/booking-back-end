class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.text :course_outline, array: true
      t.integer :enrolled_students
      t.string :image
      t.boolean :available, default: true
      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
