class RailwayStation
  attr_accessor :name_station
  def initialize(name_station)
    @name_station = name_station
    @train = {}
  end
  def add_train
    puts @@trains_all
    puts "Виберіть номер поїзда, щоб додати на станцію"
    number_train = gets.chomp.to_i
    number = @train.length + 1
    @train["#{number}"] = @@trains_all["#{number_train}"]
  end

  def train_now
    @train
  end

  #def train_detal
  #@train
  #end

  def train_go
    puts " Виберіть потяг за номером"
    puts "#{@train}"
    number = gets.chomp
    @train["#{number}"].delete
  end
end