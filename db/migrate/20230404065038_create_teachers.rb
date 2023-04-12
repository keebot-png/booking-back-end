class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :image
      t.integer :years_of_experience
      t.text :professional_summary
      t.float :hourly_rating
      t.text :available_times, array: true, default: []
      t.timestamps
      t.references :course, foreign_key: true
    end
  end
end
