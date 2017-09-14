module Company
  attr_accessor :name_company
  def initialize(name)
    @name_company = name
  end
  def name
    @name_company
  end
end