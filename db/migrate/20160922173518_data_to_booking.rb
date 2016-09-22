class DataToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :date, :string
  end
end
