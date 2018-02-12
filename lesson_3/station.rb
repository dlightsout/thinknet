class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = [] 
  end
  
  def add_train(train)
    @trains << train
  end

  def type_trains(type)
    @trains.select {|i| i = type}
  end 

  def delete_train(train)
    @trains.delete(train)
  end

end
