class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :starting_date
      t.date :ending_date
      t.timestamps
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
    end
  end
end
