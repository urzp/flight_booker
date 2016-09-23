class Booking < ActiveRecord::Base
  belongs_to :flight
  has_many :passangers, :through => :booking_passangers, :source => :booking_passanger
  has_many :booking_passangers, :foreign_key => :booking_id, :class_name => "BookingPassenger"
  accepts_nested_attributes_for :passangers
end
