

require "./class/railway_station"
require "./class/rout"
require "./class/train"
require "./class/passanger_train"
require "./class/cargo_train"
require "./class/passenger_wagon"
require "./class/freight_wagon"



s1 = RailwayStation.new "LViv"
s2 = RailwayStation.new "kiyv"

t1 = PassengerTrain.new '103-ds', :passenger
t2 = CargoTrain.new 'we1-vv', :freight

a = PassengerWagon.new
b = FreightWagon.new

a.add_wagon t1
b.add_wagon t2

a.delete_wagon t1
b.delete_wagon t2

s1.take_train(t1)
s1.take_train(t2)
s2.take_train(t1)
s2.take_train(t2)

@@station_all
s1.list
s2.list_type


