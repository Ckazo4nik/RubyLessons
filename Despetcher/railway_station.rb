require '../Despetcher/rout'


@@stations = {}
class RailwayStation
  attr_accessor :name_station
  def initialize(name_station)
    @name_station = name_station
  end
  def add_stations
    number = @@stations.length + 1
    @@stations["#{number}"] = @name_station
  end
  def stations
    @@stations
  end
end