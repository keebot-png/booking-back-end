class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :day
      t.text :times, array: true
      t.timestamps
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.references :teacher, foreign_key: true
    end
  end
end
