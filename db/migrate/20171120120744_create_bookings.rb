class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :location, foreign_key: true
      t.date :begin
      t.date :end
      t.string :status
      t.integer :owner_feedback
      t.integer :worker_feedback
      t.text :worker_review

      t.timestamps
    end
  end
end
