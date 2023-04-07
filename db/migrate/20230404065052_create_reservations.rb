class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.time :start_time
      t.time :end_time
      t.timestamps
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.references :teacher, foreign_key: true
    end
  end
end
