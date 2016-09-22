class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @booking.flight = @flight
    puts " params  #{params} "
  end



end
