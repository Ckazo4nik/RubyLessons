

require_relative "railway_station"
require_relative "rout"
require_relative "train"
require_relative "passanger_train"
require_relative "cargo_train"
require_relative "passenger_wagon"
require_relative "freight_wagon"


s1 = RailwayStation.new "LViv"
s2 = RailwayStation.new "kiyv"

t1 = PassengerTrain.new 10, :passenger
t2 = CargoTrain.new 15, :freight

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


