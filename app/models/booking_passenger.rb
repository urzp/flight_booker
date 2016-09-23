class BookingPassenger < ActiveRecord::Base
  belongs_to :booking_passanger, :foreign_key => "passanger_id", :class_name => "Passanger"
  belongs_to :passanger_booking, :foreign_key => "booking_id", :class_name => "Passanger"
end
