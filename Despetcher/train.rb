@@trains_all = {}
class Train
  attr_accessor :wagon_number, :type , :name
  def initialize(number, type, name)
    @wagon_number = number.to_i
    @type = type
    @name = name
  end

  def train_number
    @wagon_number
  end

  def train_registr
    number = @@trains_all.length + 1
    @@trains_all["#{number}"] = { @name => @wagon_number }
  end

  def type
    @type
  end
end




