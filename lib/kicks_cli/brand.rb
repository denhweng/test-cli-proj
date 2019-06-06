class StockXSneakers::Brand 
  
  attr_accessor :sneaker
  
  @@all = []
  
  def initialize(sneaker)
    @sneaker = sneaker 
  end 
  
end 