class Rout
  attr_accessor :route
  def initialize(stations = [])
    if stations.size >= 2
      @stations = stations
      # @route = []
      puts "Маршрут #{@stations.first} - #{@stations.last} створений"
    else
      puts "В маршруті мало станцій"
    end
  end

  def start_route
    puts "Перша станція данного маршрута #{@stations[0]}"
  end

  def end_route
    puts "Остання станція данного маршрута #{@stations[-1]}"
  end

  def middle_route
    puts "Проміжні станції данного маршрута #{@stations[1..-2]}"
  end

  def add(station)
    @stations.insert(-2, station)
    puts "Нова станція (#{station}) добавлена в маршрут"
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

end