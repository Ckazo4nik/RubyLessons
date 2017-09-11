class RailwayStation
  attr_accessor :name
  def initialize(name)
    @name = name
    @trains = {}
  end
  def list
    puts "На станції зараз #{@trains.length} поїздів"
  end
  def list_type
    puts "На станции поездов типа Freight: #{count_hash_dublicate(@trains, "freight")}"
    puts "На станции поездов типа Passenger: #{count_hash_dublicate(@trains, "passenger")}"
  end

  def take_train(train = {})
    @number = train.keys.join
    @type   = train.values.join
    if @number.nil? || @type.nil?
      puts "Неможливо приняти такий поїзд"
    else
      # @trains << {@number => @type}
      @trains[@number] = @type
      puts "Поїзд з номером#{@number} и і типом #{@type} принятий на станцію"
    end
  end

  def send_train(train = {})
    @number = train.keys.join
    @type   = train.values.join
    if @trains.include?({@number => @type})
      @trains.delete({@number => @type})
      puts "Поїзд Номер: #{@number} покинув станцію"
    else
      puts "На станції немає такого поїзда"
    end
  end
end