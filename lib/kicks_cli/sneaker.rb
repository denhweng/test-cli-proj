class Sneaker 
  
  attr_accessor :name :brand 
  
  @@all = []
  
  def initialize(name, brand=nil)
    @name = name 
    @brand = brand 
    @@all << self
  end 
  
  def add_sneakers 
    
  end 
  
  def brand_name
    if self.brand
      self.brand.name 
    else 
      nil 
    end 
  end 
  
  def self.all 
    @@all 
  end 
  
end 