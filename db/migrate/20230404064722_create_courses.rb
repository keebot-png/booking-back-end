class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.float :hourly_rate
      t.integer :enrolled_students
      t.string :image
      t.boolean :available, default: true
      t.timestamps
    end
  end
end
