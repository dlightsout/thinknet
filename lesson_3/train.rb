class Train
attr_reader :number_of_carriages, :number, :type, :route

  def initialize(number, type, carriage)
    @number = number
    @type = type
    @number_of_carriages = carriage
    @speed = 0 
  end

  def speed_up
    @speed += 5 
  end

  def stop
    @speed = 0
  end

  def moving?
    @speed != 0
  end

  def add_carriage
    @number_of_carriages += 1 unless moving? 
  end

  def delete_carriage
    @number_of_carriages -= 1 unless moving? && @number_of_carriages == 0
  end

  def set_route(route)
    @route = route
    current_station_index = 0
    current_station.add_train(self) 
  end

  def current_station
    @route.stations[@current_station_index]
  end

  def first_station?
    current_station_index == 0
  end

  def last_station?
    current_station_index == @route.stations.size - 1
  end
  
  def go_next_station
    unless last_station?
      current_station.send_train(self)
      @current_station_index += 1
      current_station.add_train(self)
    end
  end

  def go_previous_station
    unless first_station?
      current_station.send_train(self)
      @current_station_index -= 1
      current_station.add_train(self)
    end
  end

  def next_station
    @route.stations[@current_station_index + 1] unless last_station
  end

  def previous_station
    @route.stations[@current_station_index - 1] unless first_station
  end
end


