class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @booking.flight = @flight
    @booking.date = params[:date]
     params[:tikets].to_i.times do
      #@booking.passenger = Passanger.new
    end
    puts " params  #{params} "
  end



end
