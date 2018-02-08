class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = {} 
  end
  
  def add_train(train)
    @trains << train
  end
  
  # haven"t finished yet
  def type_trains(type)
    @trains.each_value do |i|  
      sum = 0
      if i == type
        sum += 1
      end
      puts "We have #{sum} of #{i} train"
    end

  end  

  def send_train(train)
    @trains.delete(train)
  end

  def set_route
  end
end
