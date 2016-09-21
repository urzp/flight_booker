class AddDepartToFlight < ActiveRecord::Migration
  def change
    add_column :flights, :depart, :string
  end
end
