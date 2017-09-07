@@trains_all = {}
class Train
  attr_accessor :wagon_number, :type , :name, :speed
  def initialize(number = 5, type = "pessenger", name = "Igor")
    @wagon_number = number.to_i
    @type = type
    @name = name
    @speed = 0
    @rout = "nil"
  end
  def speed
    @speed
  end
  def speed_up
    @speed += 20
  end
  def speed_down
    @speed -= 20
  end
  def add_wagon
    @wagon_number += 1
  end
  def delete_wagon
    @wagon_number -= 1
  end
  def train_number
    @wagon_number
  end
  def go_rout
    puts "Виберіть маршрут"
    puts @@routs
    number = gets.chomp.to_i
    @rout = @@routs["#{number}"]
  end

  def train_registr
    number = @@trains_all.length + 1
    @@trains_all["#{number}"] = { @name => { @wagon_number => @type }}
  end

  def type
    @type
  end
end




