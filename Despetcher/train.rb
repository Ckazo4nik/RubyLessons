class Train
  attr_accessor :wagon, :type , :station, :speed, :route
  def initialize(number, type)
    @type = type
    @number = number
    @train = {number => @type}
    @speed = 0
    @wagon = 0
    puts "Поїзд був створений "
  end
  def speed
    puts "Швидість потяга #{@speed}"
  end
  def speed_up
    puts "Швидість потяга #{@speed += 20} збільшено на 20км"
  end
  def speed_down
    puts "Швидість потяга #{@speed -= 20} зменшено на 20км"
  end
  def add_wagon
    if speed == 0
      puts "Вагон добавлено #{@wagon += 1}"
    else
      puts "Зупиніть потяг"
    end
  end
  def delete_wagon
    puts "Вагон відчеплено #{@wagon -= 1}"
  else
    puts "Зупиніть потяг"
  end
  def wagon
    puts "Кількість вагонів = #{@wagon}"
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
    puts "У поїзда тип #{@type}"
  end
  private
  def count_hash_dublicate(hash, value)
    count = 0
    hash.values.each do |t|
      if t == value
        count += 1
      end
    end
    return count
  end



end




