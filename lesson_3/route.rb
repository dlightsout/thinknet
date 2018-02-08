class Route 
  attr_reader :from, :to, :whole_route
  def initialize(from, to)
    @from = from
    @to = to 
    @whole_route = [from, to]
  end

  def add_station(name)
    @whole_route.insert(-2, name) 
  end

  def delete_temporory(station)
    @whole_route.delete(station)
  end

end