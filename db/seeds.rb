# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport::delete_all
Airport.create( [ {name: "SAD"},
   {name: "LMN"},
   {name: "RWD"},
   {name: "JLS"},
   {name: "PLA"},
   {name: "ORW"},
   {name: "HUT"},
   {name: "HOP"},
   {name: "LAT"}, ] )
