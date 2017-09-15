require_relative "valid"
class Rout
  include Valid
  attr_accessor :route
  VALID_ROUT = /^[a-я]{4,6}-[a-я]{4,6}$/i
  def initialize(rout ,stations = [])
    @rout = rout
    if stations.size >= 2
      @stations = stations
      # @route = []
      puts "Маршрут #{@stations.first} - #{@stations.last} створений"
    else
      puts "В маршруті мало станцій"
    end
    validate!
  end

  def start_route
    @stations[0]
  end

  def end_route
    @stations[-1]
  end

  def middle_route
    @stations[1..-2]
  end

  def add(station)
    @stations.insert(-2, station)
  end

  def delete(station)
    if @stations.include?(station)
      @stations.delete(station)
      puts "Станція #{station} видалена з маршрута"
    else
      puts "Станція #{station} станція не в маршруті"
    end
  end

  def list
    puts "Маршрут від #{@stations.first} до #{@stations.last}"
    @stations.each_with_index{ |station, index| puts "#{index + 1}. #{station}"}
  end

  def stations
    @stations
  end

  protected
  def validate!
    raise "Невірне ім'я маршрута " if @rout !~ VALID_ROUT
  end
end