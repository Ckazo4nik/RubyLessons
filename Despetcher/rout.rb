@@routs = {}
class Rout
  attr_accessor :name
  def initialize(name)
    @name = name
    @station = {}
  end
  def reg_rout
    number = @@routs.length + 1
    @@routs["#{number}"] = @name
  end
  def station
    @station
  end

  def first_station
    @station.first
  end
  def last_station
    a = @station.to_a
    a.last
  end
  def delete_statoin
    puts "Виберіть станцію"
    puts @station
    number = gets.chomp.to_i
    @station["#{number}"].delete
  end
  def puts_sort
    @station.sort
    puts @station
  end
  def add_station
    puts "Виберіть станцію"
    puts @@stations_all
    number_station = gets.chomp.to_i
    number = @station.length + 1
    @station["#{number}"] = @@stations_all["#{number_station}"]
  end
end