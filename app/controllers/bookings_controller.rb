class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    @booking.flight = @flight
    @booking.date = params[:date]
    params[:tikets].to_i.times { @booking.passangers.build }
     #@count_passangers = params[:tikets].to_i
      #@booking.passengers.build


  end

  def create
    puts " params ---->  #{params} "
     @booking = Booking.new(booking_params)

  end

  private
   def booking_params
     params.require(:booking).permit(:flight_id,
                 :passengers_attributes => [:name, :email] )
   end
end