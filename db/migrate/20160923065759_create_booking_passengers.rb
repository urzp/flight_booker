class CreateBookingPassengers < ActiveRecord::Migration
  def change
    create_table :booking_passengers do |t|
      t.integer :passanger_id
      t.integer :booking_id

      t.timestamps null: false
    end
  end
end
