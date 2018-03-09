class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = [] 
  end
  
  def add_train(train)
    @trains << train
  end

  def list_of_trains_by_type(train_type)
    @trains.select {|train| train.type.to_s == train_type}
  end 

  def send_train(train)
    @trains.delete(train)
  end
end





