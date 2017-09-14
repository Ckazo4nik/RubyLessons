require_relative "company"
require_relative "instance_counter"
@@trains = {}
class Train
  include InstanceCounter
  include Company
  attr_accessor :wagon, :type , :station, :speed, :route
  def initialize(number, type)
    register_instance
    @type = type
    @number = number
    @train = {number => @type}
    @speed = 0
    @wagon = 0
    @@trains[number] = @type
    puts "Поїзд був створений "
  end
  def self.find(number)
    if @@trains.include?(number)
      @@trains[number]
    else
      return nil
    end
  end
  def number
    @number
  end
  def train
    @train
  end
  def speed
    puts "Швидість потяга #{@speed}"
    return @speed
  end
  def speed_up
    puts "Швидість потяга #{@speed += 20} збільшено на 20км"
  end
  def speed_down
    puts "Швидість потяга #{@speed -= 20} зменшено на 20км"
  end
  def delete_wagon
    puts "Вагон відчеплено #{@wagon -= 1}"
  else
    puts "Зупиніть потяг"
  end
  def wagon
    @wagon
    puts "Кількість вагонів = #{@wagon}"
    return @wagon
  end
  def take_route(station)
    @station = station
    puts "ПОтяг готовий їхати зі станції #{@station.first} на станцію #{@station.last}"
  end
  def move(station)
    if @route.include?(station)
      @station = station
      puts "Поезд  приехал на с станцию #{@station}"
    else
      puts "Такой станции нет в маршруте"
    end
  end

  def stop
    if @speed == 0
      puts "Потяг вже зупинений"
    else
      @speed = 0
      puts "ПОтяг зупинено"
    end
  end
  def type
    @type
    puts "У поїзда тип #{@type}"
  end

  def wagon_type
    @wagon_type
  end


  private


end




