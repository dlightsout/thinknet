class Route 
  attr_reader :stations
  
  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  def add_station(station)
    @stations.insert(-2, station) 
  end

  def delete_station(station)
    if station != @stations[0] && station != @stations[-1]
        @stations.delete(station)
    end
  end

end

