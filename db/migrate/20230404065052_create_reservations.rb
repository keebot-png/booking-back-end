class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :available_days, array: true
      t.time :available_times, array: true
      t.timestamps
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
    end
  end
end
