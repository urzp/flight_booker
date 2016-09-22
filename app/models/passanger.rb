class Passanger < ActiveRecord::Base
  has_many :bookings
end
