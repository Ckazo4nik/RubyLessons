class Train
attr_accessor :type, :number_wagon
  def initialize(type = "passengers", number_wagon = 10, speed = 0)
    @type = type
    @number_wagon = number_wagon
    @speed = speed
  end
  def number_wagon
    @number_wagon
  end
  def speed_now
    @speed
  end
  def speed_up=(speed)
    @speed += speed
  end
  def speed_down=(speed)
    @speed -= speed
  end
  def wagon=(action)
    if @speed == 0
      if action == 1
        puts "Вагон добавлено"
        @number_wagon += 1
      elsif action == 2
        puts "Вагон відєднано"
        @number_wagon -= 1
      else
        puts "Невірна дія"
        puts "1 = Добавити вагон  2 = Відєднати вагон"
      end
    else
      puts "Зупиніть поїзд"
    end
  end


end
class RailwayStation
attr_accessor :name

end
class Route

end
