require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper 
  
  @@all = []
  # attr_accessor :parse_page

  # def initialize 
  #end 
  
  
   def self.scrape_shoes_by_brand(input)
     doc = Nokogiri::HTML(open('https://stockx.com/balenciaga-sneakers')) # change to input after testing 
     doc.css('div.TileBody-sc-1rlrno1-0').collect do |sneaker|
      arr = sneaker.css('div').text.split("lowest ask")
      arr.uniq 
      @@all << arr.uniq
     end 
     # browse_tiles = doc.css(".browse-tile")
     # browse_tiles.each do |tile| 
    #    tile.children[0].children[0].children[1].children[0].text
     # end 
     binding.pry
     #this method should eventually create shoe instances
     #make sure you're associating each instance with a brand
   end

  
  # def item_container
  # doc.css('div.PrimaryText-sc-12c6bzb-0').text 
  # OR doc.css('div.TileBody-sc-1rlrno1-0').text - returns what i need but lowest ask returns 3 times 
  # end 
  
  # grabbing each sneaker and lowest price as an array:
  # doc.css('div.TileBody-sc-1rlrno1-0').collect do |sneaker|
  # arr = sneaker.css('div').text.split("lowest ask")
  # arr.uniq 
  # end 
    
  
end 