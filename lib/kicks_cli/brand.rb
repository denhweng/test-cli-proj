class StockXSneakers::Brand 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def shoes 
    #goes to the shoe class and returns an array of all instances of shoes that are associated with this brand
  end
  
end 