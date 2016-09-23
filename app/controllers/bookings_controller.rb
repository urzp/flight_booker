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
    @booking = Booking.new(booking_params)
    if @booking.save
      #@booking.passengers.each { |p| PassengerMailer.thank_you_email(p).deliver! }
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
   def booking_params
     params.require(:booking).permit(:flight_id, :date,
     :passangers_attributes => [:name, :email] )

   end
end
