class Flight < ActiveRecord::Base
  has_one :from_airport, :foreign_key => :id, :class_name => "Airport"
  has_one :to_airport, :foreign_key => :id, :class_name => "Airport"
end
