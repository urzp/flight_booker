# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport::delete_all
Flight::delete_all
Airport.create([ {name: "SAD"},
   {name: "LMN"},
   {name: "RWD"},
   {name: "JLS"},
   {name: "PLA"},
   {name: "ORW"},
   {name: "HUT"},
   {name: "HOP"},
   {name: "LAT"}, ])

airports = Airport.all
companis = ['United', 'American', 'Lufthansa', 'Delta', 'Alaska Airlines']
dates = [1,2,3,4,5,6,7
]



   airports.each_with_index do |air_from, i|
     puts "#{i}. air_from #{air_from}"
     airports.each do |air_to|
       next if air_from == air_to
       flight_time = "#{rand(15)}:#{rand(5)}#{rand(9)}"

       companis.each do |comp|
         name = "#{comp} #{rand(9)}#{rand(9)}#{rand(9)}#{rand(9)}"
         dates.each do |dat|
           f = Flight.new
           #puts air_from
           f.from_airport = air_from
           f.to_airport = air_to
           air_from.departing_flights << f
           air_to.arriving_flights << f
           #f.id_takeoff = air_from.id
           #f.id_landing = air_to.id
           f.flight_time = flight_time
           f.name = name
           f.depart = "#{rand(24)}:#{rand(5)}#{rand(9)}"
           f.week_day = dat
           #puts "Flight #{f}"
           f.save
       end
     end
   end
 end
