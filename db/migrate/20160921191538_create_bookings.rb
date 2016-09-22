class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :flight
      t.belongs_to :passanger

      t.timestamps null: false
    end
  end
end
