class Passanger < ActiveRecord::Base
  has_many :bookings
  has_many :bookings,  :through => :booking_passangers, :source => :passanger_booking
  has_many :booking_passangers, :foreign_key => :passanger_id, :class_name => "BookingPassenger"
end
