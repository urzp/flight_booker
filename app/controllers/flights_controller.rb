class FlightsController < ApplicationController
  def index
    #puts "params = #{params}"
    @date = DateTime.parse("#{params[:date][:year]}-#{params[:date][:month]}-#{params[:date][:day]}" )
    #puts "date = #{date.wday.class}"
    #week_day = Date::DAYNAMES[date.wday]
    #@flights = Flight.first(10)
    @flights = Flight.where("id_takeoff = ? AND id_landing = ? AND week_day = ? " , params[:from], params[:to], @date.wday).order(:depart)
    @airports = Airport.all.map{|a| [ a.name, a.id ] }
    @passengers = (1..4).map{|a| [ a, a ] }
  end
end
