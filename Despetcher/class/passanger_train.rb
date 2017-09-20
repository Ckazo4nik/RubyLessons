class PassengerTrain < Train
  attr_accessor :number
  def initialize(number, type)
    super
    @wagon_type = PassengerWagon
  end
end
