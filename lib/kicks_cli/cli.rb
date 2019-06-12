class CLI
  
  def call
    # Scraper.scrape_shoes_by_brand #scrapes the shoes before welcome is puts'd in the console 
    welcome 
    sleep 2
    start
  end 
  
  def welcome
    puts "Welcome to StockX, the biggest market for rare shoes. Let's see if the shoes you are looking for are available."
  end 
  
  def start 
    puts "What brand would you like to search? Adidas, Jordan, Nike, Asics, Balenciaga, Converse, New Balance, Puma, Reebok, Saucony, UnderArmour, or Vans?"
    input = gets.chomp 
    #if I've already scraped this brand before, how would I know so that I don't scrape again? 
    Scraper.scrape_shoes_by_brand
  end
  
  
end