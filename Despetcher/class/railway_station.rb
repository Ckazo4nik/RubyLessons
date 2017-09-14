require_relative "instance_counter"
require_relative "company"
@@station_all = {}
class RailwayStation
  include Company
  include InstanceCounter
  def self.all
    @@station_all
  end
  attr_accessor :name
  def initialize(name)
    register_instance
    @name = name
    @trains = {}
    number = @@station_all.length + 1
    @@station_all[number] = name
  end
  def list
    puts "На станції зараз #{@trains.length} поїздів"
  end
  def list_type
    puts "На станции поездов типа Freight: #{count_hash_dublicate(@trains, "freight")}"
    puts "На станции поездов типа Passenger: #{count_hash_dublicate(@trains, "passenger")}"
  end

  def take_train(name)
    @number = name.train.keys.join.to_i
    @type = name.train.values.join
    if @number.nil? || @type.nil?
      puts "Неможливо приняти такий поїзд"
    else
      # @trains << {@number => @type}
      @trains[@number] = @type
      puts "Поїзд з номером #{@number} и і типом #{@type} принятий на станцію"
    end
  end

  def send_train!(name)
    number = name.train.keys.join.to_i
    type = name.train.values.join
    if @trains[@number] = type
      @trains.delete(number)
      puts "Поїзд Номер: #{number} покинув станцію"
    else
      puts "На станції немає такого поїзда"
    end
  end
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