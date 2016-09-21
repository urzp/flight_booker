class AddDepartWeekDayToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :week_day, :string
  end
end
