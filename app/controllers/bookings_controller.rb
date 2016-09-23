class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @booking.flight = @flight
    @booking.date = params[:date]
     @count_passangers = params[:tikets].to_i
      #@booking.passengers.build

    puts " params  #{params} "
  end



end
