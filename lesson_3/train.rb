class Train
attr_accessor :speed, :carriage 
attr_reader :number, :type, 
  

  def initialize(number, type, carriage, speed = 0 )
    @number = number
    @type = type
    @carriage = carriage

  end

  def speed
    self.speed += 5 
  end

  def break
    self.speed = 0
  end

  def add_carriage
    self.carrage += 1 if speed == 0 
  end

  def delete_carriage
    self.carrage -= 1 if speed == 0 && carriage > 0
  end

## эту чвсть не особо понимаю, скопировал
  def set_route(route)
    unless @route.nil?
      current_station.delete_train(self) 
    end
    @route_index = 0
    @route = route
    current_station.add_train(self)
  end
  def forward
    if current_station == @route.stations.last
      puts "Вы на конечной станции"
    else
      current_station.delete_train(self)
      @route_index += 1
      current_station.add_train(self)
    end
  end

  def backward
    if current_station == @route.stations.first
      puts "Вы на начальной станции"
    else
      current_station.delete_train(self)
      @route_index -= 1
      current_station.add_train(self)
    end
  end

  def next_station
    @route.stations[@route_index + 1]
  end

  def prev_station
    @route.stations[@route_index - 1]
  end

  def current_station
    @route.stations[@route_index]
  end
  
end