class Flight < ActiveRecord::Base
  belongs_to :from_airport, :foreign_key => :id_takeoff, :class_name => "Airport"
  belongs_to :to_airport, :foreign_key => :id_landing, :class_name => "Airport"
  has_many :bookings
end
