module Company
  def name_company(name)
    self.name_company = name
  end
  def name_company
    self.name_company
  end
  protected
  attr_accessor :name_company
end