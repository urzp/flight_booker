class FlightsController < ApplicationController
  def index
    puts "params = #{params}"
    @flights_xml = Flight.all

    if params[:date]
    @date = DateTime.parse("#{params[:date][:year]}-#{params[:date][:month]}-#{params[:date][:day]}" )
    #puts "date = #{date.wday.class}"
    #week_day = Date::DAYNAMES[date.wday]
    #@flights = Flight.first(10)
    @flights = Flight.where("id_takeoff = ? AND id_landing = ? AND week_day = ? " , params[:from], params[:to], @date.wday).order(:depart)
    @flights = @flights.paginate(page:	params[:page])
    else
      @flights = Flight.paginate(page:	params[:page])
    end
    @airports = Airport.all.map{|a| [ a.name, a.id ] }
    @passengers = (1..4).map{|a| [ a, a ] }

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @flights_xml}
      format.json { render json: @flights_xml }
    end

  end

end
