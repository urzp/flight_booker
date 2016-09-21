class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all.map{|a| [ a.name, a.id ] }
    @passengers = (1..4).map{|a| [ a, a ] }
  end
end
