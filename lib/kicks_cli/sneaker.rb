class Sneaker 
  
  attr_accessor :name :brand 
  
  @@all = []
  
  def initialize(name, brand=nil)
    @name = name 
    @brand = brand 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
end 