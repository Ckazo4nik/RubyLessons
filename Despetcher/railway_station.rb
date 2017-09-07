@@stations_all = {}
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
 def station_registr
   number = @@stations_all.length + 1
   @@stations_all["#{number}"] = @name_station
 end
  #def train_detal
  #puts "Виберіть поїзд тип похїзда"
  #puts " 1 пасажрський, 2 вантажний"
  #number_train = gets.chomp.to_i
  #a = 0
  #b = 0
  #while @train.length
  #@train[a]
  #end
  #end

  def train_go
    puts " Виберіть потяг за номером"
    puts @train
    number = gets.chomp.to_i
    @train["#{number}"].delete
  end
end