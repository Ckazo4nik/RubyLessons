require_relative 'company'
require_relative 'instance_counter'
require_relative 'valid'
@@trains = {}
VALID_NUMBER = /^([a-z]|\d){3}-?([a-z]|\d){2}$/i
class Train
  include Valid
  include InstanceCounter
  include Company
  attr_accessor :wagon, :type, :station, :speed, :route
  def initialize(number, type)
    register_instance
    @type = type
    @number = number
    @train = { number => @type }
    @speed = 0
    @wagon = 10
    @@trains[number] = @type
    puts 'Поїзд був створений '
    validate!
  end

  def self.find(number)
    @@trains[number] if @@trains.include?(number)
  end

  attr_reader :number

  def set_number(number)
    @number = number
  end

  attr_reader :train

  attr_reader :speed

  def speed_up
    @speed += 20
  end

  def speed_down
    @speed -= 20
  end

  def delete_wagon
    @wagon -= 1
  else
    puts 'Зупиніть потяг'
  end

  attr_reader :wagon

  def take_route(station)
    @station = station
    puts "ПОтяг готовий їхати зі станції #{@station.first} на станцію #{@station.last}"
  end

  def move(station)
    if @route.include?(station)
      @station = station
      puts "Поезд  приїхав на станцію #{@station}"
    else
      puts 'Такої станції немає в маршруті'
    end
  end

  def wagon_action
    @wagon.times do |x|
      yield(x)
    end
  end

  def stop
    if @speed == 0
      puts 'Потяг вже зупинений'
    else
      @speed = 0
    end
  end

  attr_reader :type

  attr_reader :wagon_type

  protected

  def validate!
    raise 'Не пройшло валідацію (Допустимый формат: три буквы или цифры в любом порядке, необязательный дефис (может быть, а может нет) и еще 2 буквы или цифры после дефиса.)' if number !~ VALID_NUMBER
    raise 'Поїзд з таким номер вже створений' if @number == @@trains.key
  rescue
    true
  end
end
