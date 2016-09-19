class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :id_takeoff
      t.integer :id_landing
      t.time :flight_time
      t.string :discription

      t.timestamps null: false
    end
  end
end
