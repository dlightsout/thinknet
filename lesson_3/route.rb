class Route 
  attr_reader :from, :to, :stations
  
  def initialize(from, to)
    @stations = [from, to]
    @name = "#{from.name} to #{to.name} "
  end

  def add_station(name)
    @stations.insert(-2, name) 
  end

  def delete_station(station)
    @stations.delete(station)
  end

end