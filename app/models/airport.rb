class Airport < ActiveRecord::Base
  has_many :departing_flights, :foreign_key => :id_takeoff, :class_name => "Flight"
  has_many :arriving_flights, :foreign_key => :id_landing, :class_name => "Flight"
end
