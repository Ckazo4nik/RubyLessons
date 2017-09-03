@@routs = {}
class Rout
  attr_accessor :name_rout
  def initialize(name_rout)
    @name_rout = name_rout
  end

  def add_station_to_rout
    puts @@stations
    puts "Виберіть  номер станцію з списку"
    key = gets.chomp.to_i
    @@routs["#{@name_rout}"]["#{number}"] = @@stations["#{key}"]
  end
end
