class CargoTrain < Train
  attr_accessor :number
  def initialize(number, type)
    super
    @wagon_type = FreightWagon
  end
end
