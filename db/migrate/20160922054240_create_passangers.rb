class CreatePassangers < ActiveRecord::Migration
  def change
    create_table :passangers do |t|
      t.string :name
      t.string :email


      t.timestamps null: false
    end
  end
end
