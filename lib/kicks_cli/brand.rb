class Brand 
  
  attr_accessor :name :sneakers
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @sneakers = []
  end 
  
  def sneakers
    @sneakers 
  end 
  
  def add_sneakers
  end 
  
  def shoes 
    #goes to the shoe class and returns an array of all instances of shoes that are associated with this brand
  end
  
end 